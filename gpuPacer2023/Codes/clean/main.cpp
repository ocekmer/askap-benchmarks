#include <iostream>
#include <iomanip>
#include <vector>
#include <omp.h>
#include <memory>
//#include <mpi.h>

#include "Parameters.h"

#include "utilities/include/ImageProcess.h"
#include "utilities/include/MaxError.h"
#include "utilities/include/WarmupGPU.h"
#include "utilities/include/WarmupSetup.h"
#include "utilities/include/GpuCommon.h"
//#include "utilities/include/LoggerUtil.h"
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

	// report the parellelism and affinity
	LogParallelAPI();
	LogBinding();
*/

	// Maximum error evaluator
	MaxError<float> maximumError;

	// Initiate an image process class
	ImageProcess imagProc;

	// Load dirty image and psf
	//float runtimeImagProc = 0.0;
	//auto timer = NewTimerHostOnly();
	auto t0 = omp_get_wtime();
//	LocalLog() << "Reading dirty image & psf image" << endl;
	cout << "Reading dirty image & psf image" << endl;
	vector<float> dirty = imagProc.readImage(gDirtyFile);
	vector<float> psf = imagProc.readImage(gPsfFile);
	const size_t DIRTY_DIM = imagProc.checkSquare(dirty);
	const size_t PSF_DIM = imagProc.checkSquare(psf);
	auto t1 = omp_get_wtime();
	auto runtimeImagProc = t1 - t0;
	LogTimeTaken(timer);

	if (PSF_DIM != DIRTY_DIM)
	{
		cerr << "Wrong set of PSF and DIRTY images" << endl;
		return -1;
	}
	
	const size_t IMAGE_DIM = DIRTY_DIM;

	// Reports some parameters
	//LocalLog() << "Iterations: " << gNiters << endl;
	//LocalLog() << "Image dimension: " << DIRTY_DIM << " x " << DIRTY_DIM << endl;
	cout << "Iterations: " << gNiters << endl;
	cout << "Image dimension: " << DIRTY_DIM << " x " << DIRTY_DIM << endl;

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
	//float runtimeRef = 0.0;
	//LocalLog() << "Solver: " << refSolverName << endl;
	cout << "Solver: " << refSolverName << endl;
	SolverFactory refSolverFactory(dirty, psf, IMAGE_DIM, refModel, refResidual);
	std::shared_ptr<IHogbom> hogbom = refSolverFactory.getSolver(refSolverName);
	//timer = NewTimerHostOnly();
	t0 = omp_get_wtime();
	hogbom->deconvolve();
	t1 = omp_get_wtime();
	auto runtimeRef = t1 - t0;
	//runtimeRef = timer.get() * 1e-6;
	
	// WARMUP
	if ((!refGPU) && testGPU)
    {
        warmupGPU.warmup();
        cout << "Warmup for test solver: " << testSolverName << endl;
    }

	// NEW SOLVER TEST
	vector<float> testResidual(dirty.size(), 0.0);
	vector<float> testModel(dirty.size(), 0.0);
	//float runtimeTest = 0.0;
	//LocalLog() << "Solver: " << testSolverName << endl;
	cout << "Solver: " << testSolverName << endl;
	SolverFactory testSolverFactory(dirty, psf, IMAGE_DIM, testModel, testResidual);
	hogbom = testSolverFactory.getSolver(testSolverName);
	//timer = NewTimerHostOnly();
	t0 = omp_get_wtime();
	hogbom->deconvolve();
	t1 = omp_get_wtime();
	auto runtimeTest = t1 - t0;
	//runtimeTest = timer.get() * 1e-6;

	//LocalLog() << "Verifying model..." << endl;
	cout << "Verifying model..." << endl;
	maximumError.maxError(refModel, testModel);
	
	//LocalLog() << "Verifying residual..." << endl;
	cout << "Verifying residual..." << endl;
	maximumError.maxError(refResidual, testResidual);

	//LocalLog() << "RUNTIME IN SECONDS:" << endl;
	cout << "RUNTIME IN SECONDS:" << endl;
	//LocalLog() << left << setw(21) << refSolverName
	//	<< left << setw(21) << testSolverName
	//	<< left << setw(21) << "Speedup" << endl;
	cout << left << setw(21) << refSolverName
		<< left << setw(21) << testSolverName
		<< left << setw(21) << "Speedup" << endl;

	cout << setprecision(2) << fixed;
	//LocalLog() << left << setw(21) << runtimeRef
		//<< left << setw(21) << runtimeTest
		//<< left << setw(21) << runtimeRef / runtimeTest << endl;
	cout << left << setw(21) << runtimeRef
		<< left << setw(21) << runtimeTest
		<< left << setw(21) << runtimeRef / runtimeTest << endl;	
	/*
	// Write images out
	imagProc.writeImage("residual.img", refResidual);
	imagProc.writeImage("model.img", refModel);
	*/
	
//	MPI_Finalize();
}
