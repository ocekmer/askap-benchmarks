#pragma once

#include "../interface/IHogbom.h"
//#include "../../utilities/include/LoggerUtil.h"
#include "../../utilities/include/GpuCommon.h"
#include <thrust/extrema.h>
#include <thrust/execution_policy.h>

#include <cmath>
#include <iostream>

class GpuThrust : public IHogbom
{
private:
	// Private methods
	void findPeak(const std::vector<float>& image, float& maxVal, size_t& maxPos);
	void subtractPSF(const size_t peakPos,
		const size_t psfPeakPos,
		const float absPeakVal) override;

public:
	GpuThrust(const std::vector<float>& dirty,
		const std::vector<float>& psf,
		const size_t imageWidth,
		std::vector<float>& model,
		std::vector<float>& residual) : IHogbom(dirty, psf, imageWidth,
		model, residual) {}

	virtual ~GpuThrust() {}

	// Public methods
	void deconvolve() override;
};