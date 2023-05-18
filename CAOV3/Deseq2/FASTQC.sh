#!/bin/bash 

#SBATCH --job-name=fastqc_reports_CAOV3 #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=150000 
#SBATCH --nodes=1
#SBATCH --time=10:00:00  
#SBATCH --share 
#SBATCH --partition=medium
#SBATCH --error=%j.%N.err.txt
#SBATCH --output=%j.%N.out.txt

#for this we are doing each replicate in the same folder
#each time point has its own folder 
#each sample from novogene also has its own folder, so this one is going to be long 

#P0 
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P01/
mkdir /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P0/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P0/
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P02/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P0/

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P03/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P0/

#P1
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P11/
mkdir /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P1/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P1/
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P12/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P1/

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P13/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P1/


#P6 
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P61/
mkdir /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P6/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P6/
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P62/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P6/

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P63/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P6/

#P7
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P71/
mkdir /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P7/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P7/

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P72/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P7/

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P73/
fastqc *.fq.gz -o /data/project/sloss/Mythreye_lab/CAOV3/FASTQC/P7/