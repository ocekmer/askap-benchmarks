#pragma once

// Utilities
#include "MaxError.h"
#include "GpuCommon.h"
//#include "LoggerUtil.h"
#include "../../Parameters.h""

// Standard libs
#include <vector>
#include <iostream>

class WarmupGPU
{
private:
	const size_t N = 1 << 26;
	friend
		__global__
		void vectorAdd(const float* a, const float* b, float* c, const size_t N);

public:
	void warmup() const;
};
