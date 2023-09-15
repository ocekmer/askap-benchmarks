# Add source to this project's executable.
add_library (SourceCodeCMake 
    Golden.cpp 
    GoldenSimpler.cpp
    OpenMP.cpp
    OpenMPOld.cpp
    OpenMPNew.cpp
    GPUOlder.hip 
    GPUPS.hip 
    GPUPSFullUnroll.hip 
    GPUPSLastWUnrolled.hip
    GPUOlder.cu 
    GPUPS.cu 
    GPUPSFullUnroll.cu 
    GPUPSLastWUnrolled.cu
    GPUSimpler.hip
    )