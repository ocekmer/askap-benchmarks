# Add source to this project's executable.
add_library (SourceCodeCMake 
    Golden.cpp 
    GoldenSimpler.cpp
    GpuThrust.hip
    OpenMP.cpp
    #OpenMPOld.cpp
    #OpenMPNew.cpp
    GpuSimpler.hip
    GpuOlder.hip 
    GpuPS.hip 
    GpuPSFullUnroll.hip 
    GpuPSLastWUnrolled.hip 
    )
