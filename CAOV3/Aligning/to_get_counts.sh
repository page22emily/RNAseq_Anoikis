#!/bin/bash 
#SBATCH --job-name=to_get_to_count_file #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=150000 
#SBATCH --nodes=1
#SBATCH --time=05:00:00  
#SBATCH --share 
#SBATCH --partition=medium
#SBATCH --error=Count_files.err.txt
#SBATCH --output=Count_files.out.txt

#create the BAM index for each Aligned file from STAR 
module load SAMtools/1.9-GCC-6.4.0-2.28

FQ_DIR=/data/project/sloss/Mythreye_lab/Sequencing_Data/Anoikis/CAOV3/CAOV3_P0_P1_P6_P7_Bulk_RNAseq_Jan_2023/Trim_Galore_CAOV3/

for base in P71 P72 P73 
do
  echo $base
  out=$FQ_DIR/$base/aligned_index.bai 
  #define BAM filename
  bam=$FQ_DIR/$base/Aligned.sortedByCoord.out.bam
  samtools index -b $bam $out
done
echo "done!"

#Count Generation with feature counts
cd /data/project/sloss/Mythreye_lab/Sequencing_Data/Anoikis/CAOV3/CAOV3_P0_P1_P6_P7_Bulk_RNAseq_Jan_2023/
module load R/3.5.1-foss-2018a-X11-20180131-bare
R --vanilla
Rscript "Rsubread.R"
