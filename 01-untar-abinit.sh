#!/bin/bash

#SBATCH --job-name=untar-abinit
#SBATCH --partition=compute
#SBATCH --account=innovation
#SBATCH --time=06:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

# find your account with:
# sacctmgr list -sp user $USER

ABINIT_VERSION=9.10.3
# Download abinit
srun wget https://www.abinit.org/sites/default/files/packages/abinit-"$ABINIT_VERSION".tar.gz
# Extract the source code
srun tar xzf abinit-"$ABINIT_VERSION".tar.gz
# Clean up
# srun rm abinit-"$ABINIT_VERSION".tar.gz

