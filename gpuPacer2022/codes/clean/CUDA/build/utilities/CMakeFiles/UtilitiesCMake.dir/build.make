# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /pawsey/centos7.6/devel/gcc/4.8.5/cmake/3.18.0/bin/cmake

# The command to remove a file.
RM = /pawsey/centos7.6/devel/gcc/4.8.5/cmake/3.18.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build

# Include any dependencies generated for this target.
include utilities/CMakeFiles/UtilitiesCMake.dir/depend.make

# Include the progress variables for this target.
include utilities/CMakeFiles/UtilitiesCMake.dir/progress.make

# Include the compile flags for this target's objects.
include utilities/CMakeFiles/UtilitiesCMake.dir/flags.make

utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o: utilities/CMakeFiles/UtilitiesCMake.dir/flags.make
utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o: ../utilities/ImageProcess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o -c /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/ImageProcess.cpp

utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.i"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/ImageProcess.cpp > CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.i

utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.s"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/ImageProcess.cpp -o CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.s

utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o: utilities/CMakeFiles/UtilitiesCMake.dir/flags.make
utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o: ../utilities/MaxError.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o -c /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/MaxError.cpp

utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.i"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/MaxError.cpp > CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.i

utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.s"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/gcc/4.8.5/gcc/11.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/MaxError.cpp -o CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.s

utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o: utilities/CMakeFiles/UtilitiesCMake.dir/flags.make
utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o: ../utilities/WarmupGPU.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && /pawsey/centos7.6/devel/binary/cuda/11.4.2/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities/WarmupGPU.cu -o CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o

utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target UtilitiesCMake
UtilitiesCMake_OBJECTS = \
"CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o" \
"CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o" \
"CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o"

# External object files for target UtilitiesCMake
UtilitiesCMake_EXTERNAL_OBJECTS =

utilities/libUtilitiesCMake.a: utilities/CMakeFiles/UtilitiesCMake.dir/ImageProcess.cpp.o
utilities/libUtilitiesCMake.a: utilities/CMakeFiles/UtilitiesCMake.dir/MaxError.cpp.o
utilities/libUtilitiesCMake.a: utilities/CMakeFiles/UtilitiesCMake.dir/WarmupGPU.cu.o
utilities/libUtilitiesCMake.a: utilities/CMakeFiles/UtilitiesCMake.dir/build.make
utilities/libUtilitiesCMake.a: utilities/CMakeFiles/UtilitiesCMake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libUtilitiesCMake.a"
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && $(CMAKE_COMMAND) -P CMakeFiles/UtilitiesCMake.dir/cmake_clean_target.cmake
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UtilitiesCMake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utilities/CMakeFiles/UtilitiesCMake.dir/build: utilities/libUtilitiesCMake.a

.PHONY : utilities/CMakeFiles/UtilitiesCMake.dir/build

utilities/CMakeFiles/UtilitiesCMake.dir/clean:
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities && $(CMAKE_COMMAND) -P CMakeFiles/UtilitiesCMake.dir/cmake_clean.cmake
.PHONY : utilities/CMakeFiles/UtilitiesCMake.dir/clean

utilities/CMakeFiles/UtilitiesCMake.dir/depend:
	cd /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/utilities /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities /scratch/director2196/ocekmer/askap-benchmarks/gpuPacer2022/codes/clean/CUDA/build/utilities/CMakeFiles/UtilitiesCMake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utilities/CMakeFiles/UtilitiesCMake.dir/depend

