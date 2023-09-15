#pragma once

#include "../../Parameters.h"

static bool refGPU = false;
static bool testGPU = false;

void warmupSetup()
{
    if (refSolverName != "cpu" ||
        refSolverName != "cpuSimpler" ||
        refSolverName != "openMP" ||
        refSolverName != "openMPOld" ||
        refSolverName != "openMPNew"
        )
    {
        refGPU = true;
    }
    if (testSolverName != "cpu" ||
        testSolverName != "cpuSimpler" ||
        testSolverName != "openMP" ||
        testSolverName != "openMPOld" ||
        testSolverName != "openMPNew"
        )
    {
        testGPU = true;
    }
}
