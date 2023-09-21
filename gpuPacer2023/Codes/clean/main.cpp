#include <iostream>
#include <iomanip>
#include <vector>
#include <omp.h>
#include <memory>
//#include <mpi.h>

#include "Parameters.h"


// const int inputbase = 4096;
// std::string gDirtyFile = "../data/dirty_" + std::to_string(inputbase) + ".img";
// std::string gPsfFile = "../data/psf_" + std::to_string(inputbase) + ".img";

size_t gNiters = 10;
float gGain = 0.1;
float gThreshold = 0.00001;

std::string refSolverName = "thrust";
std::string testSolverName = "gpuSimpler";

// int BLOCK_SIZE = 512, GRID_SIZE = 128;

// Solver selection

#include "utilities/include/ImageProcess.h"
#include "utilities/include/MaxError.h"
#include "utilities/include/WarmupGPU.h"
#include "utilities/include/WarmupSetup.h"
#include "utilities/include/GpuCommon.h"
#include "utilities/include/LoggerUtil.h"
#include "utilities/include/Hello.h"
#include "solvers/interface/IHogbom.h"
#include "solvers/factory/SolverFactory.h"

using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::left;
using std::setprecision;
using std::setw;
using std::fixed;

int main(int argc, char *argv[])
{
/*	MPI_Init(&argc, &argv);
    int size;
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    int rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    char name[MPI_MAX_PROCESSOR_NAME];
    int resultlength; // dummy
    MPI_Get_processor_name(name, &resultlength);

    Hello hello(size, rank, name);
    hello.hello();   
*/
	// report the parellelism and affinity
	LogParallelAPI();
	LogBinding();

	// Maximum error evaluator
	MaxError<float> maximumError;

	// Initiate an image process class
	ImageProcess imagProc;

	// Load dirty image and psf
	float runtimeImagProc = 0.0;
	auto timer = NewTimerHostOnly();
	LocalLog() << "Reading dirty image & psf image" << endl;
	vector<float> dirty = imagProc.readImage(gDirtyFile);
	vector<float> psf = imagProc.readImage(gPsfFile);
	// lets tile the image to that it is larger, try 4x4 tilling
	int ntile = 1;
	if (argc >= 2) {
		ntile = atoi(argv[1]);
	}
	if (argc >= 3) {
		gNiters = atoi(argv[2]);
	}
	if (argc >= 4) {
		refSolverName = std::string(argv[3]);
	}
	if (argc >= 5) {
		testSolverName = std::string(argv[4]);
	}
	int dgrid = std::sqrt(dirty.size());
	vector<float> newdirty(dirty.size()*ntile*ntile);
	vector<float> newpsf(newdirty.size());
	for (auto i=0;i<ntile;i++) {
		for (auto j=0;j<ntile;j++) {
			auto offset = i*dgrid*dgrid+j*dgrid;
			for (auto ii = 0; ii < dgrid; ii++) {
				for (auto jj=0; jj < dgrid; jj++) {
					auto index = ii * dgrid + jj;
					auto index2 = (i*ntile*dgrid+ii)*dgrid + (j*ntile*dgrid+jj);
					newdirty[index2] = dirty[index];
					newpsf[index2] = psf[index];
				}
			}
		}
	}
	dirty = newdirty;
	psf = newpsf;
	const size_t DIRTY_DIM = imagProc.checkSquare(dirty);
	const size_t PSF_DIM = imagProc.checkSquare(psf);

	// lets tile the image to that it is larger, try 4x4 tilling
	 
	LogTimeTaken(timer);

	if (PSF_DIM != DIRTY_DIM)
	{
		cerr << "Wrong set of PSF and DIRTY images" << endl;
		return -1;
	}
	
	const size_t IMAGE_DIM = DIRTY_DIM;

	// Reports some parameters
	LocalLog() << "Iterations: " << gNiters << endl;
	LocalLog() << "Image dimension: " << DIRTY_DIM << " x " << DIRTY_DIM << endl;

	// WARMUP
	WarmupGPU warmupGPU;
    warmupSetup();
    if (refGPU)
    {
        warmupGPU.warmup();
        cout << "Warmup for reference solver: " << refSolverName << endl;
    }
	
	// REFERENCE SOLVER
	vector<float> refResidual(dirty.size(), 0.0);
	vector<float> refModel(dirty.size(), 0.0);
	float runtimeRef = 0.0;
	LocalLog() << "Solver: " << refSolverName << endl;
	SolverFactory refSolverFactory(dirty, psf, IMAGE_DIM, refModel, refResidual);
	std::shared_ptr<IHogbom> hogbom = refSolverFactory.getSolver(refSolverName);
	timer = NewTimerHostOnly();
	hogbom->deconvolve();
	runtimeRef = timer.get();
	runtimeRef /= gNiters;
	LogTimeTaken(timer);
	
	// WARMUP
	if ((!refGPU) && testGPU)
    {
        warmupGPU.warmup();
        cout << "Warmup for test solver: " << testSolverName << endl;
    }

	// NEW SOLVER TEST
	gNiters = 1000;
	vector<float> testResidual(dirty.size(), 0.0);
	vector<float> testModel(dirty.size(), 0.0);
	float runtimeTest = 0.0;
	LocalLog() << "Solver: " << testSolverName << endl;
	SolverFactory testSolverFactory(dirty, psf, IMAGE_DIM, testModel, testResidual);
	hogbom = testSolverFactory.getSolver(testSolverName);
	timer = NewTimerHostOnly();
	hogbom->deconvolve();
	runtimeTest = timer.get();
	runtimeTest /= gNiters;
	LogTimeTaken(timer);

	LocalLog() << "Verifying model..." << endl;
	maximumError.maxError(refModel, testModel);
	
	LocalLog() << "Verifying residual..." << endl;
	maximumError.maxError(refResidual, testResidual);

	LocalLog() << "RUNTIME IN SECONDS:" << endl;
	LocalLog() << left << setw(21) << refSolverName
		<< left << setw(21) << testSolverName
		<< left << setw(21) << "Speedup" << endl;

	LocalLog() << left << setw(21) << runtimeRef*1e-6
		<< left << setw(21) << runtimeTest*1e-6
		<< left << setw(21) << runtimeRef / runtimeTest << endl;
	/*
	// Write images out
	imagProc.writeImage("residual.img", refResidual);
	imagProc.writeImage("model.img", refModel);
	*/
	
//	MPI_Finalize();
}
