# Investigation of Setonix GPU access patterns

## Introduction
- A Setonix GPU node has a 64-core AMD Trento CPUs and 4 AMD MI250X GPUs. 
- Each MI250X contains 2 Graphics Complex Die (GCD)
- 64-cores on each GPU node is divided into 8-core groups called chiplets 
- The cores in a chiplet share an L3 cache, and each chiplet is physically connected to a specific GPU as shown here: ![Setonix - GPU node architecture](figures/Setonix-GPU-Node.png)
- To reach the optimal performance, it is critical for each chiplet to use the GPU, which it's physically connected.
- To do this, two methods are introduced by Pawsey Supercomputing Centre's tutorial, and utilised here. 

## Codes
### Preliminary OLCF
- This code is a slightly modified version of the code used in [Setonix GPU compute node usage tutorial](https://support.pawsey.org.au/documentation/display/US/Example+Slurm+Batch+Scripts+for+Setonix+on+GPU+Compute+Nodes), and the original repository can be accessed [here](https://github.com/PawseySC/hello_jobstep). 
- The following modifications have been implemented:
    - ***printf***s are transformed into ***std::cout***s
    - ***CMake*** is utilised as the cross-compiler
- The steps in the example given in Pawsey Supercomputing Centre's [running GPU jobs on Setonix](https://support.pawsey.org.au/documentation/display/US/Example+Slurm+Batch+Scripts+for+Setonix+on+GPU+Compute+Nodes) is pursued for the modified code here.
    - The latest version of ROCM, ROCM 5.4.3, is used instead of the default one, along with CMake 3.21
    - ***PrgEnv-gnu*** should be used, since ***PrgEnv-cray*** is compatible with ***rocm/5.4.3***
    
### ASKAP - CLEAN


## Running non-exclusive jobs 
### Single-thread
- First, jobs were built to work as non-exclusive to reproduce the results in the tutorial
- The following is the first case with a single node, single thread, 3 tasks and 3 GPUs
```
salloc -N 1 -n 3 -c 8 --sockets-per-node=3 --gpus-per-node=3 -A director2196-gpu --partition=gpu-dev --time=00:30:00

//module load PrgEnv-gnu craype-accel-amd-gfx90a rocm/5.4.3 cmake/3.21.4
module load PrgEnv-gnu craype-accel-amd-gfx90a rocm/5.2.3 cmake/3.24.3
export PATH=$PATH:${CRAY_MPICH_DIR}/bin
export CPATH=$CPATH:${CRAY_MPICH_DIR}/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CRAY_MPICH_DIR}/lib/
export MPICH_GPU_SUPPORT_ENABLED=1

cmake ../
make

CPU_BIND=$(generate_CPU_BIND.sh map_cpu)
echo $CPU_BIND

export OMP_NUM_THREADS=1
srun -N 1 -n 3 -c 8 --cpu-bind=${CPU_BIND} ../selectGPU_X.sh ./hello | sort -n
```

#### Result
```
MPI 0 - OMP 0 - HWT 23 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c9
MPI 1 - OMP 0 - HWT 7 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID d1
MPI 2 - OMP 0 - HWT 15 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID d6
```

### Multi-thread
- The following is the first case with a single node, multi-thread, multi-GPU
```
salloc -N 1 -n 3 -c 8 --sockets-per-node=3 --gpus-per-node=3 -A director2196-gpu --partition=gpu-dev --time=00:30:00

module load PrgEnv-gnu craype-accel-amd-gfx90a rocm/5.4.3 cmake/3.21.4
export PATH=$PATH:${CRAY_MPICH_DIR}/bin
export CPATH=$CPATH:${CRAY_MPICH_DIR}/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CRAY_MPICH_DIR}/lib/
export MPICH_GPU_SUPPORT_ENABLED=1

cmake ../
make

CPU_BIND=$(generate_CPU_BIND.sh mask_cpu)
echo $CPU_BIND

export OMP_NUM_THREADS=4
srun -N 1 -n 3 -c 8 --cpu-bind=${CPU_BIND} ../selectGPU_X.sh ./hello | sort -n
```
#### Result
- !!! There is a problem with OMP
```
MPI 0 - OMP 0 - HWT 16 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c9
MPI 0 - OMP 0 - HWT 17 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c9
MPI 0 - OMP 0 - HWT 18 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c9
MPI 0 - OMP 0 - HWT 23 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c9
MPI 1 - OMP 0 - HWT 0 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID d1
MPI 1 - OMP 0 - HWT 1 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID d1
MPI 1 - OMP 0 - HWT 2 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID d1
MPI 1 - OMP 0 - HWT 7 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID d1
MPI 2 - OMP 0 - HWT 10 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID d6
MPI 2 - OMP 0 - HWT 15 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID d6
MPI 2 - OMP 0 - HWT 8 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID d6
MPI 2 - OMP 0 - HWT 9 - Node nid002948 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID d6
```

## Running exclusive jobs 
### 8 GPUs, each controled by 1 MPI task 
- 2 techniques explained above should be used
    - use a wrapper that selects the correct GPU
    - generate an ordered list to be used in the --cpu-bind option


- DEFINITION:
    - a ***slurm-socket***: an L3 cache group chiplet with 8 cores

```
salloc -N 1 -n 8 -c 8 --sockets-per-node=8 --gpus-per-node=8 -A director2196-gpu --partition=gpu-dev --exclusive --time=00:30:00

module load PrgEnv-gnu craype-accel-amd-gfx90a rocm/5.4.3 cmake/3.21.4
export PATH=$PATH:${CRAY_MPICH_DIR}/bin
export CPATH=$CPATH:${CRAY_MPICH_DIR}/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CRAY_MPICH_DIR}/lib/
export MPICH_GPU_SUPPORT_ENABLED=1

cmake ../
make

CPU_BIND=$(generate_CPU_BIND.sh mask_cpu)
echo $CPU_BIND

export OMP_NUM_THREADS=4
srun -l -u -c 8 --cpu-bind=${CPU_BIND} ../selectGPU_X.sh ./hello | sort -n
```

#### Result
- !!! There is a problem with OMP (This one is with OMP_PLACES=cores)
```
0: MPI 0 - OMP 0 - HWT 53 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c1
0: MPI 0 - OMP 0 - HWT 53 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c1
0: MPI 0 - OMP 0 - HWT 53 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c1
0: MPI 0 - OMP 0 - HWT 53 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 0 - Bus_ID c1
1: MPI 1 - OMP 0 - HWT 59 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID c6
1: MPI 1 - OMP 0 - HWT 59 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID c6
1: MPI 1 - OMP 0 - HWT 59 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID c6
1: MPI 1 - OMP 0 - HWT 59 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 1 - Bus_ID c6
2: MPI 2 - OMP 0 - HWT 20 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID c9
2: MPI 2 - OMP 0 - HWT 20 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID c9
2: MPI 2 - OMP 0 - HWT 20 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID c9
2: MPI 2 - OMP 0 - HWT 20 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 2 - Bus_ID c9
3: MPI 3 - OMP 0 - HWT 26 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 3 - Bus_ID ce
3: MPI 3 - OMP 0 - HWT 26 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 3 - Bus_ID ce
3: MPI 3 - OMP 0 - HWT 26 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 3 - Bus_ID ce
3: MPI 3 - OMP 0 - HWT 26 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 3 - Bus_ID ce
4: MPI 4 - OMP 0 - HWT 5 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 4 - Bus_ID d1
4: MPI 4 - OMP 0 - HWT 5 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 4 - Bus_ID d1
4: MPI 4 - OMP 0 - HWT 5 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 4 - Bus_ID d1
4: MPI 4 - OMP 0 - HWT 5 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 4 - Bus_ID d1
5: MPI 5 - OMP 0 - HWT 8 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 5 - Bus_ID d6
5: MPI 5 - OMP 0 - HWT 8 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 5 - Bus_ID d6
5: MPI 5 - OMP 0 - HWT 8 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 5 - Bus_ID d6
5: MPI 5 - OMP 0 - HWT 8 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 5 - Bus_ID d6
6: MPI 6 - OMP 0 - HWT 33 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 6 - Bus_ID d9
6: MPI 6 - OMP 0 - HWT 33 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 6 - Bus_ID d9
6: MPI 6 - OMP 0 - HWT 33 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 6 - Bus_ID d9
6: MPI 6 - OMP 0 - HWT 33 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 6 - Bus_ID d9
7: MPI 7 - OMP 0 - HWT 43 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 7 - Bus_ID de
7: MPI 7 - OMP 0 - HWT 43 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 7 - Bus_ID de
7: MPI 7 - OMP 0 - HWT 43 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 7 - Bus_ID de
7: MPI 7 - OMP 0 - HWT 43 - Node nid002876 - RT_GPU_ID 0 - GPU_ID 7 - Bus_ID de
```

## TO DO LIST
- Set up a simple hello world program: Each node, each thread and GPU should say hello
- Use a single OpenMP thread
- Use multiple OpenMP threads
- Modify, compile & run the deconvolution benchmarking code



