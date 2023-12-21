#!/bin/bash

#SBATCH --job-name=fallback-abinit
#SBATCH --partition=compute
#SBATCH --account=innovation
#SBATCH --time=04:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

# find your account with:
# sacctmgr list -sp user $USER

module load 2023r1
module load openmpi
module load openblas
module load fftw
module load netcdf-c
module load netcdf-fortran
module load hdf5
module load python

ABINIT_VERSION=9.10.3
WORKDIR=./abinit-"$ABINIT_VERSION"
cd "$WORKDIR"/fallbacks

srun ./build-abinit-fallbacks.sh > ./fallback_output.log

