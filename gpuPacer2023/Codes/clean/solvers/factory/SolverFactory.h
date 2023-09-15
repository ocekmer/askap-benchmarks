#pragma once

#include <memory>
#include <string>

#include "../interface/IHogbom.h"
#include "../include/Golden.h"
#include "../include/GoldenSimpler.h"
#include "../include/OpenMP.h"
#include "../include/OpenMPOld.h"
#include "../include/OpenMPNew.h"
#include "../include/GPUPS.h"
#include "../include/GPUPSLastWUnrolled.h"
#include "../include/GPUPSFullUnroll.h"
#include "../include/GPUOlder.h"
#include "../include/GPUSimpler.h"

class SolverFactory
{
private:
	const std::vector<float>& dirty;
	const std::vector<float>& psf;
	const size_t imageWidth;
	std::vector<float>& model;
	std::vector<float>& residual;

	std::shared_ptr<IHogbom> solverSelect;

public:
	SolverFactory(const std::vector<float>& dirty,
		const std::vector<float>& psf,
		const size_t imageWidth,
		std::vector<float>& model,
		std::vector<float>& residual) : dirty{ dirty }, psf{ psf }, imageWidth{ imageWidth },
		model{ model }, residual{ residual } {}
	std::shared_ptr<IHogbom> getSolver(std::string solverType)
	{
		if (solverType == "cpu")
		{
			solverSelect = std::make_shared<Golden>(dirty, psf, imageWidth,
					model, residual);
		}
		else if (solverType == "cpuSimpler")
		{
			solverSelect = std::make_shared<GoldenSimpler>(dirty, psf, imageWidth,
					model, residual);
		}
		else if (solverType == "openMP")
		{
			solverSelect = std::make_shared<OpenMP>(dirty, psf, imageWidth,
					model, residual);
		}
		else if (solverType == "openMPOld")
		{
			solverSelect = std::make_shared<OpenMPOld>(dirty, psf, imageWidth,
					model, residual);
		}
		else if (solverType == "openMPNew")
		{
			solverSelect = std::make_shared<OpenMPNew>(dirty, psf, imageWidth,
					model, residual);
		}
		else if (solverType == "gpuOlder")
		{
			solverSelect = std::make_shared<GpuOlder>(dirty, psf, imageWidth,
				model, residual);
		}
		else if (solverType == "gpuPS")
		{
			solverSelect = std::make_shared<GpuPS>(dirty, psf, imageWidth,
				model, residual);
		}
		else if (solverType == "gpuPSLastWUnrolled")
		{
			solverSelect = std::make_shared<GpuPSLastWUnrolled>(dirty, psf, imageWidth,
				model, residual);
		}
		else if (solverType == "gpuPSFullUnroll")
		{
			solverSelect = std::make_shared<GpuPSFullUnroll>(dirty, psf, imageWidth,
				model, residual);
		}
		else if (solverType == "gpuSimpler")
		{
			solverSelect = std::make_shared<GpuSimpler>(dirty, psf, imageWidth,
				model, residual);
		}
		return solverSelect;
	}

};