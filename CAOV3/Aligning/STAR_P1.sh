#!/bin/bash 

#SBATCH --job-name=STARCAOV3_P1 #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=180000 
#SBATCH --nodes=5
#SBATCH --time=30:00:00  
#SBATCH --share 
#SBATCH --partition=medium
#SBATCH --error=STARCAOV3_P1.err.txt
#SBATCH --output=STARCAOV3_P1.out.txt

module load rc-base
module load rc-base.orig
module load STAR/2.7.1a-foss-2018b

# define variables
index=/data/project/sloss/Mythreye_lab/Sequencing_Data/Anoikis/CAOV3/CAOV3_P0_P1_P6_P7_Bulk_RNAseq_Jan_2023/STAR_reference_GRCh38/
# get our data files
FQ_DIR=/data/project/sloss/Mythreye_lab/Sequencing_Data/Anoikis/CAOV3/CAOV3_P0_P1_P6_P7_Bulk_RNAseq_Jan_2023/Trim_Galore_CAOV3/

#for base in P01 P02 P03 P11 P12 P13 P61 P62 P63 P71 P72 P73
#do
#echo $base
#decompress files 
#gzip -d $FQ_DIR/$base/${base}_1.fq.gz
#gzip -d $FQ_DIR/$base/${base}_2.fq.gz
#done
#echo "done decompresing fastqs!"

for base in P11 P12 P13
do
  echo $base
  out=$FQ_DIR/$base/
  # define R1 fastq filename
  fq1=$FQ_DIR/$base/${base}_1_val_1.fq
  
  echo $fq1

 # define R2 fastq filename
  fq2=$FQ_DIR/$base/${base}_2_val_2.fq

 # align with STAR
  STAR --runThreadN 5 --genomeDir $index \
    --readFilesIn $fq1 $fq2 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix $out --outTmpDir /data/scratch/empage/${base}_tempalign --quantMode GeneCounts
done

echo "done!"
