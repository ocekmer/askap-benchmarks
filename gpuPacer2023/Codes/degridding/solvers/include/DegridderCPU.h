#pragma once

#include "../interface/IDegridder.h"

#include "../../utilities/include/LoggerUtil.h"

#include <vector>
#include <iostream>
#include <complex>

template <typename T2>
class DegridderCPU : public IDegridder<T2>
{
private:
    
public:
    DegridderCPU(const Vector<T2>& grid,
        const size_t DSIZE,
        const size_t SSIZE,
        const size_t GSIZE,
        const size_t support,
        const Vector<T2>& C,
        const Vector<int>& cOffset,
        const Vector<int>& iu,
        const Vector<int>& iv,
        Vector<T2>& data) : IDegridder<T2>(grid, DSIZE, SSIZE, GSIZE, support, C, cOffset, iu, iv, data) {}
    
    virtual ~DegridderCPU() {}

    void degridder() override;
};