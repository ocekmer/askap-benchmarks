#pragma once

#include "../interface/IHogbom.h"
#include "../../utilities/include/LoggerUtil.h"
#include "../../utilities/include/GpuCommon.h"

#include <cmath>
#include <iostream>

class GpuPSFullUnroll : public IHogbom
{
private:
	// device vectors
	float* dDirty;
	float* dPsf;
	float* dResidual;

	const size_t SIZE_IMAGE = dirty.size() * sizeof(float);
	
	void reportDevice();

	struct Peak
	{
		size_t pos;
		float val;
	};

	struct Position
	{
		__host__ __device__
		Position(int x, int y) : x{ x }, y{ y } {}
		int x;
		int y;
	};

	// Private methods
	__host__ __device__
	static Position idxToPos(const size_t idx, const int width);
	
	__host__ __device__
	static size_t posToIdx(const int width, const Position& pos);

	__host__
	static Peak findPeak(const float* dData, size_t N);
	
	void subtractPSF(const size_t peakPos,
		const size_t psfPeakPos,
		const float absPeakVal) override;

	void memAlloc();
	void copyH2D();
	void copyD2H();

	friend
		__global__
		void dSubtractPSF_FU(const float* dPsf,
			float* dResidual,
			const int imageWidth,
			const int startx, const int starty,
			int const stopx, const int stopy,
			const int diffx, const int diffy,
			const float absPeakVal, const float gain);

public:
	GpuPSFullUnroll(const std::vector<float>& dirty,
		const std::vector<float>& psf,
		const size_t imageWidth,
		std::vector<float>& model,
		std::vector<float>& residual) : IHogbom(dirty, psf, imageWidth,
			model, residual) {}

	virtual ~GpuPSFullUnroll();

	// Public methods
	void deconvolve() override;


};
