#!/bin/bash  

#SBATCH --job-name=trial_submit_Elizabeth_1
#SBATCH -n 1
#SBATCH --mem-per-cpu=12000 
#SBATCH --nodes=1
#SBATCH --time=01:00:00  
#SBATCH --share 
#SBATCH --partition=short
#SBATCH --error=%j.%N.err.txt
#SBATCH --output=%j.%N.out.txt




wget -r -c ftp://X202SC22021313-Z01-F001:zx3tdc2y@usftp21.novogene.com:21/