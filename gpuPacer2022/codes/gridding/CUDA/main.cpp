// ****************************************************************************************
// ****************************************************************************************
// ****************************************************************************************
/// @copyright (c) 2009 CSIRO
/// Australia Telescope National Facility (ATNF)
/// Commonwealth Scientific and Industrial Research Organisation (CSIRO)
/// PO Box 76, Epping NSW 1710, Australia
/// atnf-enquiries@csiro.au
///
/// This file is part of the ASKAP software distribution.
///
/// The ASKAP software distribution is free software: you can redistribute it
/// and/or modify it under the terms of the GNU General Public License as
/// published by the Free Software Foundation; either version 2 of the License,
/// or (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program; if not, write to the Free Software
/// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
///
/// @author Ben Humphreys <ben.humphreys@csiro.au>
/// @author Tim Cornwell  <tim.cornwell@csiro.au>
// ****************************************************************************************
// ****************************************************************************************
// ****************************************************************************************

/* Parameters:
    data      : values to be gridded in a 1D vector
    support   : total width of the convolution function = 2*support + 1
    C         : convolution function; shape: (2*support + 1, 2*support + 1, *)
    cOffset   : offset into convolution function per data point
    iu, iv    : integer locations of grid points
    grid      : output grid; shape: (gSize, *)
    gSize     : size of 1 axis of grid
              : size of grid in pixels

    freq      : temporal frequency (inverse wavelengths)
    cellSize  : size of 1 grid cell in wavelengths
    wCellSize : size of 1 w grid cell in wavelengths
    wSize     : size of lookup table in w

    nSamples  : number of visibility samples
*/

#include "utilities/MaxError.h"
#include "utilities/Parameters.h"
#include "utilities/PrintVector.h"
#include "utilities/Setup.h"
#include "src/IGridder.h"
#include "src/SolverFactory.h"
#include "utilities/WarmupGPU.h"

#include <iostream>
#include <complex>
#include <vector>
#include <string>
#include <omp.h>
#include <iomanip>

using std::cout;
using std::endl;
using std::complex;
using std::vector;
using std::polar;
using std::left;
using std::setprecision;
using std::setw;
using std::fixed;

int main()
{
    // Print vector object
    PrintVector<Value> printVectorComplex;
    PrintVector<Coord> printVector;

    // Maximum error evaluator
    MaxError<Value> maximumError;

    // Initialize the data to be gridded
    auto tInit = omp_get_wtime();

    vector<Coord> u(NSAMPLES, 0.0);
    vector<Coord> v(NSAMPLES, 0.0);
    vector<Coord> w(NSAMPLES, 0.0);

    //vector<Value> data(NSAMPLES * NCHAN);
    vector<Value> data(NSAMPLES * NCHAN, 1.0);
    vector<Value> cpuOutData(NSAMPLES * NCHAN, 0.0);
    vector<Value> gpuOutData(NSAMPLES * NCHAN, 0.0);
    
    auto tFin = omp_get_wtime();
    auto timeInitData = (tFin - tInit) * 1000.0; // in ms

    // Measure frequency in inverse wavelengths
    vector<Coord> freq(NCHAN, 0.0);

    // Initialize convolution function & offsets
    vector<Value> C;
    int support;
    int overSample;
    vector<int> cOffset;

    // Vectors of grid centers
    vector<int> iu;
    vector<int> iv;
    Coord wCellSize;

    Setup<Real, Coord, Value> setup(support, overSample, wCellSize, u, v, w, freq, cOffset, iu, iv, C);
    
    tInit = omp_get_wtime();
    setup.setup();
    tFin = omp_get_wtime();
    auto timeSetup = (tFin - tInit) * 1000.0; // in ms

    const int SSIZE = 2 * support + 1;
    vector<Value> refGrid(GSIZE * GSIZE);
    refGrid.assign(refGrid.size(), static_cast<Value>(0.0));
    vector<Value> testGrid(GSIZE * GSIZE);
    testGrid.assign(testGrid.size(), static_cast<Value>(0.0));

    WarmupGPU warmupGPU;

    // WARMUP
    if (refSolverName != "cpu")
    {
        // Warmup
        warmupGPU.warmup();
    }

    // Reference gridder
    cout << "\nSolver: " << refSolverName << endl;
    SolverFactory refSolverFactory(support, GSIZE, data, C, cOffset, iu, iv, refGrid);
    std::shared_ptr<IGridder> refGridder = refSolverFactory.getSolver(refSolverName);
    tInit = omp_get_wtime();
    refGridder->gridder();
    tFin = omp_get_wtime();
    auto timeGridRef = (tFin - tInit) * 1000.0; // in ms

    // WARMUP
    if (refSolverName == "cpu")
    {
        // Warmup
        warmupGPU.warmup();
    }

    // Test gridder
    cout << "\nSolver: " << testSolverName << endl;
    SolverFactory testSolverFactory(support, GSIZE, data, C, cOffset, iu, iv, testGrid);
    std::shared_ptr<IGridder> testGridder = testSolverFactory.getSolver(testSolverName);
    tInit = omp_get_wtime();
    testGridder->gridder();
    tFin = omp_get_wtime();
    auto timeGridTest = (tFin - tInit) * 1000.0; // in ms
    
    cout << "Verifying the code" << endl;
    maximumError.maxError(refGrid, testGrid);

    cout << "\nRUNTIME IN MILLISECONDS:" << endl;
    cout << left << setw(21) << "Setup"
        << left << setw(21) << "Gridding - Ref"
        << left << setw(21) << "Gridding - Test"
        << left << setw(21) << "Speedup" << endl;;

    cout << setprecision(2) << fixed;
    cout << left << setw(21) << timeSetup
        << left << setw(21) << timeGridRef
        << left << setw(21) << timeGridTest 
        << left << setw(21) << timeGridRef/timeGridTest << endl;
}
