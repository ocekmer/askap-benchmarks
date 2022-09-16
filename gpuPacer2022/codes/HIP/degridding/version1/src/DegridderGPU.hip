#include "DegridderGPU.h"

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

void degridHelper(const Complex* dGrid,
    const int SSIZE,
    const int DSIZE,
    const int GSIZE,
    const int support,
    const Complex* dC,
    const int* dCOffset,
    const int* dIU,
    const int* dIV,
    Complex* dData)
{
    int device;
    hipGetDevice(&device);
    hipDeviceProp_t devProp;
    hipGetDeviceProperties(&devProp, device);

    cout << "maxGridSize "<<devProp.maxGridSize<<" maxThreadsPerBlock = "<<devProp.maxThreadsPerBlock << endl;
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

        devDegridKernel <<< gridSize, SSIZE >>>(dGrid, GSIZE, dC, support, dCOffset, dIU, dIV, dData, dind);

        gpuCheckErrors("cuda kernel launch failure");
    }
    cout << "Used " << count << " kernel launches." << endl;

}

template <typename T2>
void DegridderGPU<T2>::degridder()
{
    cout << "\nDegridding on GPU" << endl;
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

    // Kernel launch
    typedef hipComplex Complex;
    degridHelper((const Complex*)dGrid, SSIZE, DSIZE, GSIZE, support, (const Complex*)dC, dCOffset, dIU, dIV, (Complex*)dData);
    auto tKernel = omp_get_wtime();

    gpuErrchk(hipMemcpy(data.data(), dData, SIZE_DATA, hipMemcpyDeviceToHost));
    gpuCheckErrors("hipMemcpy D2H failure");
    auto tD2H = omp_get_wtime();

    // Deallocate device vectors
    gpuErrchk(hipFree(dData));
    gpuErrchk(hipFree(dGrid));
    gpuErrchk(hipFree(dC));
    gpuErrchk(hipFree(dCOffset));
    gpuErrchk(hipFree(dIU));
    gpuErrchk(hipFree(dIV));
    gpuCheckErrors("hipFree failure");
    auto tFrees = omp_get_wtime();
    auto tFinal = omp_get_wtime();

    cout << "\nDegridderGPU IN MILLISECONDS:" << endl;
    cout << left << setw(21) << "hipMallocs"
         << left << setw(21) << "hipMemcpys (H2D)"
         << left << setw(21) << "kernel"
         << left << setw(21) << "hipMemcpys (D2H)"
         << left << setw(21) << "frees"
         << left << setw(21) << "total" << endl;;

    //cout << setprecision(2) << fixed;
    cout << left << setw(21) << (tAlloc - tInit) * 1000.0
         << left << setw(21) << (tH2D - tAlloc) * 1000.0
         << left << setw(21) << (tKernel - tH2D) * 1000.0 
         << left << setw(21) << (tD2H - tKernel) * 1000.0
         << left << setw(21) << (tFrees - tD2H) * 1000.0
         << left << setw(21) << (tFinal - tInit) * 1000.0 << endl;

}

template void DegridderGPU<std::complex<float>>::degridder();
template void DegridderGPU<std::complex<double>>::degridder();
