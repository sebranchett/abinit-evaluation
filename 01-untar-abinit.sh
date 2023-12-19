#!/bin/bash

#SBATCH --job-name=untar-abinit
#SBATCH --partition=compute
#SBATCH --account=innovation
#SBATCH --time=23:55:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB

# find your account with:
# sacctmgr list -sp user $USER

srun tar xzf abinit-9.10.3.tar.gz

