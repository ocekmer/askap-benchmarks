#pragma once

#include <vector>
#include <complex>
#include <iostream>

#include "../../Parameters.h"

//#include "LoggerUtil.h"

template <typename T>
class MaxError
{
public:
    void maxError(const Vector<T>& v1, const Vector<T>& v2) const;
};
