#include "degridKernelGPU.h"
#include <cassert>

// launch_bounds__(2*support+1, 8)
template <int support>
__global__
void devDegridKernel(
    const Complex* grid,
    const int GSIZE,
    const Complex* C,
    const int* cOffset,
    const int* iu,
    const int* iv,
    Complex* data,
    const int dind)
{

    const int bind = blockIdx.x;
    const int tind = threadIdx.x;

    const int dindLocal = dind + bind;

    const int SSIZE = 2 * support + 1;
    assert(SSIZE == blockDim.x);

    // The actual starting grid point
    __shared__ int gindShared;

    // The Convolution function point from which we offset
    __shared__ int cindShared;

    // Shared memory buffer for the conv pixels in this block (data point)
    __shared__ float sdata_re[SSIZE];
    __shared__ float sdata_im[SSIZE];

    if (tind == 0)
    {
        gindShared = iu[dindLocal] + GSIZE * iv[dindLocal] - support;
        cindShared = cOffset[dindLocal];
    }
    __syncthreads();

    Complex original = data[dindLocal];

    for (int row = 0; row < SSIZE; ++row)
    {
        // Make a local copy from shared memory
        int gind = gindShared + GSIZE * row;
        int cind = cindShared + SSIZE * row;

        if (tind < SSIZE)
        {
            const Complex cpix = hipCmulf(grid[gind + tind], C[cind + tind]);
            sdata_re[tind] = cpix.x;
            sdata_im[tind] = cpix.y;
            __syncthreads();

            //DegridderGPU IN MILLISECONDS:
            //hipMallocs           hipMemcpys (H2D)     kernel               total      original
            //61.56                313.01               0.71                 422.21
            //61.02                309.89               0.71                 418.36
            //59.86                309.99               0.71                 418.27
            //hipMallocs           hipMemcpys (H2D)     kernel               total      Reduction #1
            //61.34                309.72               0.60                 416.65
            //61.66                313.83               0.58                 419.82
            //59.78                311.65               0.59                 417.04
            //hipMallocs           hipMemcpys (H2D)     kernel               total      Reduction #2
            //62.09                312.88               0.60                 421.94
            //59.86                310.96               0.61                 416.64
            //60.77                310.60               0.60                 418.89
            //hipMallocs           hipMemcpys (H2D)     kernel               total      Reduction #3
            //61.74                311.09               0.61                 421.11
            //61.12                310.37               0.61                 419.66
            //60.92                313.63               0.59                 421.76
            //hipMallocs           hipMemcpys (H2D)     kernel               total      Reduction #4
            //60.97                311.78               0.60                 417.27
            //61.43                314.90               0.59                 421.45
            //61.10                316.58               0.61                 424.42

            // Reduction suggestions at https://developer.download.nvidia.com/assets/cuda/files/reduction.pdf

            // Note: This hasn't gone as far as separate warp reductions. The whole thing is reduced together.
            //       Performance may be improved if separate warp reductions are used and loops are unrolled.

            const int reduction = 4;

            switch (reduction)
            {
            case 0: // this is the original case, which has been deleted (had a bug and hasn't been redone yet)
                // assert(0);
                break;
            case 1: // Reduction #1
                for(unsigned int s=1; s < SSIZE; s *= 2)
                {
                    if ((tind % (2*s) == 0) && (tind + s < SSIZE))
                    {
                        //sdata[tind] = hipCaddf(sdata[tind], sdata[tind + s]);
                        sdata_re[tind] += sdata_re[tind + s];
                        sdata_im[tind] += sdata_im[tind + s];
                    }
                    __syncthreads();
                }
                break;
            case 2: // Reduction #2
                for(unsigned int s=1; s < SSIZE; s *= 2)
                {
                    int index = 2 * s * tind;
                    if (index + s < SSIZE) {
                        //sdata[tind] = hipCaddf(sdata[tind], sdata[tind + s]);
                        sdata_re[index] += sdata_re[index + s];
                        sdata_im[index] += sdata_im[index + s];
                    }
                    __syncthreads();
                }
                break;
            case 3: // Reduction #3
                for(unsigned int s=SSIZE/2; s > 0; s /= 2)
                {
                    if ((tind < s) && (tind + s < SSIZE)) {
                        //sdata[tind] = hipCaddf(sdata[tind], sdata[tind + s]);
                        sdata_re[tind] += sdata_re[tind + s];
                        sdata_im[tind] += sdata_im[tind + s];
                    }
                    __syncthreads();
                }
                // because SSIZE is odd, reduction #3 misses the last thread
                if (tind == 0)
                {
                    sdata_re[tind] += sdata_re[SSIZE-1];
                    sdata_im[tind] += sdata_im[SSIZE-1];
                }
                __syncthreads();
                break;
            case 4: // deal with imaginary parts if tind > s
                for(unsigned int s=SSIZE/2; s > 0; s /= 2)
                {
                    // reduce the real part with threads 0:SSIZE/2
                    if ((tind < s) && (tind + s < SSIZE)) {
                        sdata_re[tind] += sdata_re[tind + s];
                    }
                    // reduce the imaginary part with threads SSIZE/2:SSIZE
                    if ((tind > SSIZE-1-s) && (tind - s >= 0)) {
                        sdata_im[tind] += sdata_im[tind - s];
                    }
                    __syncthreads();
                }
                // because SSIZE is odd, the real accumulation ends in the first thread but misses the last thread
                // while the imaginary accumulation ends in the last thread but misses the first thread.
                // So add the last to the first before moving on
                if (tind == 0)
                {
                    sdata_re[tind] += sdata_re[SSIZE-1];
                    sdata_im[tind] += sdata_im[SSIZE-1];
                }
                __syncthreads();
                break;
            default:
                // assert(0);
                break;
            }

        }

        if (tind == 0)
        {
            original = hipCaddf(original, make_hipComplex(sdata_re[tind], sdata_im[tind]));
        }
    }

    if (tind == 0)
    {
        data[dindLocal] = original;
    }

}

template
__global__
void devDegridKernel<64>(
    const Complex* grid,
    const int GSIZE,
    const Complex* C,
    const int* cOffset,
    const int* iu,
    const int* iv,
    Complex* data,
    const int dind);

