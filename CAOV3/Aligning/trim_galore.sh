#!/bin/bash 

#SBATCH --job-name=TRIMGALORE #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=180000 
#SBATCH --nodes=4
#SBATCH --time=40:00:00  
#SBATCH --share 
#SBATCH --partition=medium
#SBATCH --error=TRIMGALORE.err.txt
#SBATCH --output=TRIMGALORE.out.txt

module load rc-base
module load rc-base.orig
module load Trim_Galore/0.6.7-GCCcore-10.3.0

FQ_DIR=/data/project/sloss/Mythreye_lab/Sequencing_Data/Anoikis/CAOV3/CAOV3_P0_P1_P6_P7_Bulk_RNAseq_Jan_2023/usftp21.novogene.com/01.RawData

for base in P01 P02 P03 P11 P12 P13 P61 P62 P63 P71 P72 P73
do
  echo $base

  # define R1 fastq filename
  fq1=$FQ_DIR/$base/${base}_1.fq
 # define R2 fastq filename
  fq2=$FQ_DIR/$base/${base}_2.fq
  
trim_galore -q 20 --cores 4 --fastqc --illumina --dont_gzip --paired $fq1 $fq2 $FQ_DIR/$base/${base}_trimmed_1.fq $FQ_DIR/$base/${base}_trimmed_2.fq

done 
