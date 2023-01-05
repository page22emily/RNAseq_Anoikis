# RNAseq_Anoikis
This project is the first cell line for the anoikis project.
I will be doing this analysis for OV90

For the RNAseq data, this includes: 
* Download from Novogene 
* FASTQC to check the quality (they all passed, as expected) 
  * Average GC was between 47-54% 
  * Average read length was 150 bp. This will allow the use of the standard protocols, particularly k- mers 
* Salmon Aligner
  * Just need the alignmrnent for DE
* DESeq2 
* Pathway Analysis for Hallmarks and Standard GSEA using ClusterProfiler 
* Heatmaps 
