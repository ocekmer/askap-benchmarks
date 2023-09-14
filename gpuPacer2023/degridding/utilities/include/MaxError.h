#pragma once

#include <vector>
#include <complex>
#include <iostream>

#include "../include/LoggerUtil.h"

template <typename T>
class MaxError
{
public:
    void maxError(const std::vector<T>& v1, const std::vector<T>& v2) const;
};
