#pragma once

#include "../interface/IDegridder.h"
#include "../../utilities/include/LoggerUtil.h"
#include "../../utilities/include/GpuCommon.h"

#include <vector>
#include <iostream>
#include <complex>
#include <cassert>

template <typename T2>
class DegridderGPUWarpShuffle : public IDegridder<T2>
{
private:
    // Device vectors
    T2* dData;
    T2* dGrid;
    T2* dC;
    int* dCOffset;
    int* dIU;
    int* dIV;

    // Device parameters
    const size_t SIZE_DATA = this->data.size() * sizeof(T2);
    const size_t SIZE_GRID = this->grid.size() * sizeof(T2);
    const size_t SIZE_C = this->C.size() * sizeof(T2);
    const size_t SIZE_COFFSET = this->cOffset.size() * sizeof(int);
    const size_t SIZE_IU = this->iu.size() * sizeof(int);
    const size_t SIZE_IV = this->iv.size() * sizeof(int);

    // Private methods
    void deviceAllocations();

    // Memory copy from host to device
    void copyH2D();

    friend
    __global__
        void devDegridKernelWarpShuffle(
            const Complex* grid,
            const int GSIZE,
            const Complex* C,
            const int support,
            const int* cOffset,
            const int* iu,
            const int* iv,
            Complex* data,
            const int dind);

public:
    DegridderGPUWarpShuffle(const Vector<T2>& grid,
        const size_t DSIZE,
        const size_t SSIZE,
        const size_t GSIZE,
        const size_t support,
        const Vector<T2>& C,
        const Vector<int>& cOffset,
        const Vector<int>& iu,
        const Vector<int>& iv,
        Vector<T2>& data) : IDegridder<T2>(grid, DSIZE, SSIZE, GSIZE, support, C, cOffset, iu, iv, data) {}

    virtual ~DegridderGPUWarpShuffle();

    void degridder() override;
};

