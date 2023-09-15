#pragma once

#include <string>
#include <iostream>

static const int IMAGE_WIDTH = 4096;

static const std::string gDirtyFile = "dirty_" + std::to_string(IMAGE_WIDTH) + ".img";
static const std::string gPsfFile = "psf_" + std::to_string(IMAGE_WIDTH) + ".img";

static const size_t gNiters = 1000;
static const float gGain = 0.1;
static const float gThreshold = 0.00001;

static const int BLOCK_SIZE = 128; // CUDA maximum is 1024
static const int GRID_SIZE = 512;

// Solver selection
static const std::string refSolverName = "cpu";
static const std::string testSolverName = "gpuPSFullUnroll";

/*
	Solvers explanation:
	- cpu: CPU solver
	- cpuSimpler: CPU solver with a simplified code
	- openMPOld: OpenMP solver used in YandaSoft
	- openMP: A recently developed OpenMP solver
	- openMPNew: A recently developed OpenMP solver
	- gpuOlder: Solver from the previous hackathon, uses shared memory, standard find max
	- gpuPS: parallel sweep
	- gpuPSLastWUnrolled: parallel sweep, last warp unrolled
	- gpuPSFullUnroll: parallel sweep, full unroll 
	- gpuSimpler: A simplified GPU solver with a better performance
*/


