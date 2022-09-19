#include "gridKernelGPU.h"

__global__
void devGridKernel1(
    const Complex* data,
    const int support,
    const Complex* C,
    const int* cOffset,
    const int* iu,
    const int* iv,
    Complex* grid,
    const int GSIZE,
    const int dind)
{
    //printf("Hi there!\n");
    // The actual starting grid point
    __shared__ int gindShared;

    // The Convolution function point from which we offset
    __shared__ int cindShared;

    // Calculate the data index offset for this block
    const int dindLocal = dind + blockIdx.y;

    // A copy of the visibility data
    // All threads can read it from shared memory
    // rather than all reading from device (global) memory
    __shared__ Complex dataLocal;

    if (threadIdx.x == 0)
    {
        gindShared = iu[dindLocal] + GSIZE * iv[dindLocal] - support;
        cindShared = cOffset[dindLocal];
        dataLocal = data[dindLocal];
    }

    __syncthreads();

    // Make a local copy from shared memory
    int gind = gindShared;
    int cind = cindShared;

    // blockIdx.x gives the support location in the v direction
    int SSIZE = 2 * support + 1;
    gind += GSIZE * blockIdx.x;
    cind += SSIZE * blockIdx.x;

    // threadIdx.x gives the support location in the u direction
    grid[gind + threadIdx.x] = hipCfmaf(dataLocal, C[cind + threadIdx.x], grid[gind + threadIdx.x]);
}

__global__
void devGridKernel2(
    const Complex* data,
    const int support,
    const Complex* C,
    const int* cOffset,
    const int* iu,
    const int* iv,
    Complex* grid,
    const int GSIZE,
    const int dind)
{

    const int SSIZE = 2 * support + 1;
    assert(SSIZE == blockDim.x);

    const int bind = blockIdx.x;
    const int tind = threadIdx.x;

    const int dindLocal = dind + bind;
    const Complex dataLocal = data[dindLocal];

    int gind = iu[dindLocal] + GSIZE * iv[dindLocal] - support;
    int cind = cOffset[dindLocal];

    for (int row = 0; row < SSIZE; ++row)
    {

        if (tind < SSIZE)
        {
            //grid[gind + tind] = hipCfmaf(dataLocal, C[cind + tind], grid[gind + tind]);
            const Complex tmp = hipCmulf(dataLocal, C[cind + tind]);
            //grid[gind + tind] = hipCaddf(grid[gind + tind], tmp);
            atomicAdd(&grid[gind].x + 2*tind,   tmp.x);
            atomicAdd(&grid[gind].x + 2*tind+1, tmp.y);
        }

        gind += GSIZE;
        cind += SSIZE;

    }

}
