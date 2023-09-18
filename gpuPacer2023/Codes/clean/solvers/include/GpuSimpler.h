#pragma once

#include "../interface/IHogbom.h"
//#include "../../utilities/include/LoggerUtil.h"
#include "../../utilities/include/GpuCommon.h"

#include <cmath>
#include <iostream>

class GpuSimpler : public IHogbom
{
private:
	// device vectors
	float* dDirty;
	float* dPsf;
	float* dResidual;

	const size_t SIZE_IMAGE = dirty.size() * sizeof(float);

	void reportDevice();

	// Private methods
	__host__
		void findPeak(float* dMax, size_t* dIndex, size_t* d2Index, float& peakValue, size_t& peakPos, const float* dData, size_t N);

	void subtractPSF(const size_t peakPos,
		const size_t psfPeakPos,
		const float absPeakVal) override;
	void subtractPSF2(const int &px, const int &py, const size_t &peakPos,
		const float &absPeakVal);

	void memAlloc();
	void copyH2D();
	void copyD2H();

	friend
		__global__
		void dSubtractPSF_Simpler(const float* dPsf,
			float* dResidual,
			const int imageWidth,
			const int startx, const int starty,
			int const stopx, const int stopy,
			const int diffx, const int diffy,
			const float absPeakVal, const float gain);

public:
	GpuSimpler(const std::vector<float>& dirty,
		const std::vector<float>& psf,
		const size_t imageWidth,
		std::vector<float>& model,
		std::vector<float>& residual) : IHogbom(dirty, psf, imageWidth,
			model, residual) {}

	virtual ~GpuSimpler();

	// Public methods
	void deconvolve() override;


};
