#pragma once

#include "../interface/IHogbom.h"
//#include "../../utilities/include/LoggerUtil.h"
#include "../../utilities/include/GpuCommon.h"

#include <cmath>
#include <iostream>
#include <omp.h>

class OpenMPOld : public IHogbom
{
private:
	struct Position
	{
		Position(int x, int y) : x{ x }, y{ y } {}
		int x;
		int y;
	};

	// Private methods
	Position idxToPos(const int idx, const size_t width);
	size_t posToIdx(const size_t width, const Position& pos);

    const int NTHREADS = omp_get_max_threads();

	void findPeak(const std::vector<float>& image, float& maxVal, size_t& maxPos);
	void subtractPSF(const size_t peakPos,
		const size_t psfPeakPos,
		const float absPeakVal) override;

public:
	OpenMPOld(const std::vector<float>& dirty,
		const std::vector<float>& psf,
		const size_t imageWidth,
		std::vector<float>& model,
		std::vector<float>& residual) : IHogbom(dirty, psf, imageWidth,
		model, residual) {}

	virtual ~OpenMPOld() { std::cout << "Golden destructor" << std::endl; }

	// Public methods
	void deconvolve() override;
};