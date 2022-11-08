#!/bin/bash

#SBATCH --partition=batch
#SBATCH --job-name=julia-test
#SBATCH --output=res.txt

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=1G
#SBATCH --time=00:01:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cedric.simal@unamur.be[

julia test_distributed.jl

