# RNAseq_Anoikis
This project is the first cell line for the anoikis project/ paper.
I will be doing this analysis for OV90 and CAOV3

For the RNAseq data, this includes: 
* Download from Novogene
* FASTQC to check the quality (they all passed, as expected) 
  * Average GC was between 47-54% 
  * Average read length was 150 bp. This will allow the use of the standard protocols, particularly k- mers 
* Salmon Aligner
  * Just need the alignment for DE
* DESeq2 
* Pathway Analysis for Hallmarks using ClusterProfiler 
* Heatmaps 
* Visualizations

Collaborators did preliminary analysis on OV90, so the novogene download and FASTQC was not done here. 
Each Cell Line has a folder, divided by DEG based analysis (labeled Deseq2) and then Pathway based analysis (Hallmark_Analysis). 
