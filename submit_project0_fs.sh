#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --partition=normal
#SBATCH --time=0-00:10:00
#SBATCH --cpus-per-task=1
#SBATCH --job-name=proj0_fs
#SBATCH --output=slurm_reports/slurm-%j-%x.out
#SBATCH --error=slurm_reports/slurm-%j-%x.err

# List the working directory, where it is running, and the date/time
# for easier debugging/metadata
pwd; hostname; date

module load julia/1.8.0
julia ./localtest.jl

# List the time when it finished
date
