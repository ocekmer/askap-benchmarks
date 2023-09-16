// Solver interface 
#pragma once

#include "../../Parameters.h"

#include <vector>
#include <iostream>
#include <complex>

template <typename T2>
class IDegridder
{
protected:
    const Vector<T2>& grid;
    const size_t DSIZE;
    const size_t SSIZE;
    const size_t GSIZE;
    const size_t support;
    const Vector<T2>& C;
    const Vector<int>& cOffset;
    const Vector<int>& iu;
    const Vector<int>& iv;
    Vector<T2>& data;
        
public:
    IDegridder(const Vector<T2>& grid,
        const size_t DSIZE,
        const size_t SSIZE,
        const size_t GSIZE,
        const size_t support,
        const Vector<T2>& C,
        const Vector<int>& cOffset,
        const Vector<int>& iu,
        const Vector<int>& iv,
        Vector<T2>& data) : grid{ grid }, DSIZE{ DSIZE }, SSIZE{ SSIZE }, GSIZE{ GSIZE }, support{ support }, C{ C },
        cOffset{ cOffset }, iu{ iu }, iv{ iv }, data{ data } {}
    virtual ~IDegridder() {}
    virtual void degridder() = 0;
};

