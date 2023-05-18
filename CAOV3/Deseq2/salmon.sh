#!/bin/bash 

#SBATCH --job-name=salmonCAOV3 #THIS IS THE ONLYT PART OF THIS YOU CHANGE 
#SBATCH --mem-per-cpu=180000 
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


module load rc-base
module load Salmon/1.8.0-gompi-2020b

#P0
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P01/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P01_1.fq.gz -2 P01_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P01_quant
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P02/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P02_1.fq.gz -2 P02_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P02_quant

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P03/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P03_1.fq.gz -2 P03_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P03_quant


#P1
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P11/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P11_1.fq.gz -2 P11_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P11_quant
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P12/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P12_1.fq.gz -2 P12_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P12_quant

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P13/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P13_1.fq.gz -2 P13_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P13_quant


#P6 
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P61/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P61_1.fq.gz -2 P61_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P61_quant
 
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P62/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P62_1.fq.gz -2 P62_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P62_quant

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P63/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P63_1.fq.gz -2 P63_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P63_quant


#P7
module load FastQC/0.11.9-Java-11
cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P71/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P71_1.fq.gz -2 P71_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P71_quant

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P72/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P72_1.fq.gz -2 P72_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P72_quant

cd /data/project/sloss/Mythreye_lab/CAOV3/usftp21.novogene.com/01.RawData/P73/
salmon quant -i "/data/user/empage/Mythreye/Elizabeth_Activin/salmon_hg19_transcripts_index/" -l A -1 P73_1.fq.gz -2 P73_2.fq.gz \
--gcBias --validateMappings -o /data/project/sloss/Mythreye_lab/CAOV3/quants/P73_quant

