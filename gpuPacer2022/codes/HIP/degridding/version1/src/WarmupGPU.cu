#include "WarmupGPU.h"

__global__
void saxpy(int n, float a, float *x, float *y)
{
  int i = blockIdx.x*blockDim.x + threadIdx.x;
  if (i < n) y[i] = a*x[i] + y[i];
}

__global__
void vector_add(float *out, float *a, float *b, int n)
{
    for (int i = 0; i < n; i++) {
        out[i] = a[i] + b[i];
    }
}

void warmup(int N)
{
    N = 1<<N;

    float *x, *y, *d_x, *d_y, *out, *d_out;
    x = (float*)malloc(N*sizeof(float));
    y = (float*)malloc(N*sizeof(float));
    out = (float*)malloc(N*sizeof(float));

    hipMalloc(&d_x, N*sizeof(float)); 
    hipMalloc(&d_y, N*sizeof(float));
    hipMalloc(&d_out, N*sizeof(float));

    for (int i = 0; i < N; i++) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    hipMemcpy(d_x, x, N*sizeof(float), hipMemcpyHostToDevice);
    hipMemcpy(d_y, y, N*sizeof(float), hipMemcpyHostToDevice);

    //saxpy<<<(N+255)/256, 256>>>(N, 2.0f, d_x, d_y);
    vector_add<<<1,1>>>(d_out, d_x, d_y, N);

    //hipMemcpy(y, d_y, N*sizeof(float), hipMemcpyDeviceToHost);
    hipMemcpy(out, d_out, N*sizeof(float), hipMemcpyDeviceToHost);

    hipFree(d_x);
    hipFree(d_y);
    hipFree(d_out);
    free(x);
    free(y);
    free(out);
}
