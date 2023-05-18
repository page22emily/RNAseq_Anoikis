#!/bin/bash  

#SBATCH --job-name=wget_CAOV3_bulkRNASeq
#SBATCH -n 1
#SBATCH --mem-per-cpu=12000 
#SBATCH --nodes=1
#SBATCH --time=04:00:00  
#SBATCH --share 
#SBATCH --partition=short
#SBATCH --error=%j.%N.err.txt
#SBATCH --output=%j.%N.out.txt



wget -r -c ftp://X202SC22084746-Z01-F001:t8wb7d6m@usftp21.novogene.com:21/