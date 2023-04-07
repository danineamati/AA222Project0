#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --partition=normal
#SBATCH --time=0-00:10:00
#SBATCH --cpus-per-task=1
#SBATCH --job-name=proj0_fs

date

module load julia/1.8.0
julia ./localtest.jl

date
