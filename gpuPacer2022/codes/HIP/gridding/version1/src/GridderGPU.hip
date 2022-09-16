#include "GridderGPU.h"

#include <omp.h>
#include <iomanip>
using std::cout;
using std::endl;
using std::vector;
using std::complex;
using std::left;
using std::setprecision;
using std::setw;
using std::fixed;

int gridStep(const int DSIZE, const int SSIZE, const int dind, const std::vector<int>&iu, const std::vector<int>&iv);

template <typename T2>
void GridderGPU<T2>::gridder()
{
    cout << "\nGridding on GPU" << endl;
    auto tInit = omp_get_wtime();

    // Device parameters
    const size_t SIZE_DATA = data.size() * sizeof(T2);
    const size_t SIZE_GRID = gpuGrid.size() * sizeof(T2);
    const size_t SIZE_C = C.size() * sizeof(T2);
    const size_t SIZE_COFFSET = cOffset.size() * sizeof(int);
    const size_t SIZE_IU = iu.size() * sizeof(int);
    const size_t SIZE_IV = iv.size() * sizeof(int);

    T2* dData;
    T2* dGrid;
    T2* dC;
    int* dCOffset;
    int* dIU;
    int* dIV;

    // Allocate device vectors
    gpuErrchk(hipMalloc(&dData, SIZE_DATA));
    gpuErrchk(hipMalloc(&dGrid, SIZE_GRID));
    gpuErrchk(hipMalloc(&dC, SIZE_C));
    gpuErrchk(hipMalloc(&dCOffset, SIZE_COFFSET));
    gpuErrchk(hipMalloc(&dIU, SIZE_IU));
    gpuErrchk(hipMalloc(&dIV, SIZE_IV));
    gpuCheckErrors("hipMalloc failure");
    auto tAlloc = omp_get_wtime();

    gpuErrchk(hipMemcpy(dData, data.data(), SIZE_DATA, hipMemcpyHostToDevice));
    gpuErrchk(hipMemcpy(dGrid, gpuGrid.data(), SIZE_GRID, hipMemcpyHostToDevice));
    gpuErrchk(hipMemcpy(dC, C.data(), SIZE_C, hipMemcpyHostToDevice));
    gpuErrchk(hipMemcpy(dCOffset, cOffset.data(), SIZE_COFFSET, hipMemcpyHostToDevice));
    gpuErrchk(hipMemcpy(dIU, iu.data(), SIZE_IU, hipMemcpyHostToDevice));
    gpuErrchk(hipMemcpy(dIV, iv.data(), SIZE_IV, hipMemcpyHostToDevice));
    gpuCheckErrors("hipMemcpy H2D failure");
    auto tH2D = omp_get_wtime();

    /*******************************************************************************************************/
    /*******************************************************************************************************/
    // Kernel launch
    cout << "Kernel launch" << endl;
    const size_t DSIZE = data.size();
    typedef hipComplex Complex;

    const int SSIZE = 2 * support + 1;
    int step = 1;

    /*
    This loop steps through each spectral sample
    either 1 or 2 at a time. It will do multiple samples
    if the regions involved do not overlap. If they do,
    only the non-overlapping samples are gridded.

    Gridding multiple points is better, because giving the
    GPU more work to do allows it to hide memory latency
    better. The call to d_gridKernel() is asynchronous
    so subsequent calls to gridStep() overlap with the actual gridding.
    */

    const int kernel = 2;

    if (kernel == 1) {

        hipFuncSetCacheConfig(reinterpret_cast<const void*>(devGridKernel1), hipFuncCachePreferL1);

        int count = 0;
        for (int dind = 0; dind < DSIZE; dind += step)
        {
            step = gridStep(DSIZE, SSIZE, dind, iu, iv);
            dim3 gridDim(SSIZE, step);
            /// PJE: make sure any chevron is tightly packed
            devGridKernel1 <<<gridDim, SSIZE >>>((const Complex*)dData, support, (const Complex*)dC,
                                                 dCOffset, dIU, dIV, (Complex*)dGrid, GSIZE, dind);
            gpuCheckErrors("kernel launch (devGridKernel_v0) failure");
            count++;
        }
        cout << "Used " << count << " kernel launches." << endl;

    } else {

        hipFuncSetCacheConfig(reinterpret_cast<const void*>(devGridKernel2), hipFuncCachePreferL1);

        int device;
        hipGetDevice(&device);
        hipDeviceProp_t devProp;
        hipGetDeviceProperties(&devProp, device);
 
        int gridSize = devProp.maxGridSize[0];  // launch kernels for this number of samples at a time
        assert(SSIZE <= devProp.maxThreadsPerBlock);

        int count = 0;
        for (int dind = 0; dind < DSIZE; dind += gridSize)
        {
            // if there are less than dimGrid elements left, do the remaining
            if ((DSIZE - dind) < gridSize)
            {
                gridSize = DSIZE - dind;
            }
 
            ++count;

            devGridKernel2 <<< gridSize, SSIZE >>>((const Complex*)dData, support, (const Complex*)dC,
                                                   dCOffset, dIU, dIV, (Complex*)dGrid, GSIZE, dind);

            gpuCheckErrors("cuda kernel launch failure");
        }
        cout << "Used " << count << " kernel launches." << endl;

    }

    auto tKernel = omp_get_wtime();

    gpuErrchk(hipMemcpy(gpuGrid.data(), dGrid, SIZE_GRID, hipMemcpyDeviceToHost));
    gpuCheckErrors("hipMemcpy D2H failure");

    // Deallocate device vectors
    gpuErrchk(hipFree(dData));
    gpuErrchk(hipFree(dGrid));
    gpuErrchk(hipFree(dC));
    gpuErrchk(hipFree(dCOffset));
    gpuErrchk(hipFree(dIU));
    gpuErrchk(hipFree(dIV));
    gpuCheckErrors("hipFree failure");
    auto tFinal = omp_get_wtime();

    cout << "\nDegridderGPU IN MILLISECONDS:" << endl;
    cout << left << setw(21) << "hipMallocs"
         << left << setw(21) << "hipMemcpys (H2D)"
         << left << setw(21) << "kernel"
         << left << setw(21) << "total" << endl;;

    //cout << setprecision(2) << fixed;
    cout << left << setw(21) << (tAlloc - tInit) * 1000.0
         << left << setw(21) << (tH2D - tAlloc) * 1000.0
         << left << setw(21) << (tKernel - tH2D) * 1000.0 
         << left << setw(21) << (tFinal - tInit) * 1000.0 << endl;
}

int gridStep(const int DSIZE, const int SSIZE, const int dind, const std::vector<int>& iu, const std::vector<int>& iv)
{
    const int MAXSAMPLES = 32;
    for (int step = 1; step <= MAXSAMPLES; ++step)
    {
        for (int check = (step - 1); check >= 0; --check)
        {
            if (!((dind + step) < DSIZE && (
                abs(iu[dind + step] - iu[dind + check]) > SSIZE ||
                abs(iv[dind + step] - iv[dind + check]) > SSIZE)
                ))
            {
                return step;
            }
        }
    }
    return MAXSAMPLES;
}

template void GridderGPU<std::complex<float>>::gridder();
template void GridderGPU<std::complex<double>>::gridder();

