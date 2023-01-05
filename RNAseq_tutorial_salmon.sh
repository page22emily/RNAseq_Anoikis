#!/bin/bash 

#SBATCH --job-name=trial_1_Elizabeth #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=150000 
#SBATCH --nodes=5
#SBATCH --time=40:00:00  
#SBATCH --share 
#SBATCH --partition=medium
#SBATCH --error=%j.%N.err.txt
#SBATCH --output=%j.%N.out.txt

#Next is the step that will require the most editing. 
#Do not do more than 10 in one "job" that you are submitting 
#The index is made as well for you. I will have it in the Lab Cheaha folder and 
#the path is already correct for you. You only have to change the path to the FASTQs and the names 
#CHANGE NAME_ and PATH TO FASTQs WITHOUT ""

module load rc-base
module load Salmon/1.8.0-gompi-2020b

cd PATH TO FASTQs WITHOUT ""

salmon quant -i "/data/project/sloss/Mythreye_lab/salmon_hg19_transcripts_index/" -l A -1 NAME_1.fastq -2 SAME_NAME_2.fastq \
--gcBias --validateMappings -o quants/SRR10912052_quant
 
#copy and paste for how many samples you have, but have no more than 10 per one of these scripts 

