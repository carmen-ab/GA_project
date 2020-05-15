#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J 02_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

#Load modules
module load bioinfo-tools FastQC/0.11.8

#Your commands

fastqc -o ~/GA_project/analyses/02_trimming/02_fastqc_raw -t 2 <(zcat ~/GA_project/data/RNA/RNA_raw_data/*)
fastqc -o ~/GA_project/analyses/02_trimming/03_fastqc_trimmed -t 2 <(zcat ~/GA_project/data/RNA/RNA_trimmed/*)
