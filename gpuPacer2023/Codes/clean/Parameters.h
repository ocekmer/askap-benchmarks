#pragma once

#include <string>
#include <iostream>

/*
extern std::string gDirtyFile, gPsfFile;

extern size_t gNiters;
extern float gGain, gThreshold;

extern int BLOCK_SIZE, GRID_SIZE;

// Solver selection
extern std::string refSolverName, testSolverName;
*/

static const int inputbase = 4096;
static const std::string gDirtyFile = "../data/dirty_" + std::to_string(inputbase) + ".img";
static const std::string gPsfFile = "../data/psf_" + std::to_string(inputbase) + ".img";

// static const size_t gNiters = 1;
// static const float gGain = 0.1;
// static const float gThreshold = 0.00001;

extern size_t gNiters;
extern float gGain, gThreshold;

static const int BLOCK_SIZE = 512, GRID_SIZE = 128;

// Solver selection
static const std::string refSolverName = "thrust";
// static const std::string refSolverName = "cpu";
static const std::string testSolverName = "gpuSimpler";

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


