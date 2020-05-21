#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J 01_fastqc_trimmed
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

#Load modules
module load bioinfo-tools FastQC/0.11.8

#Your commands
fastqc -o ~/GA_project/analyses/02_trimming/03_fastqc_trimmed -t 2 <(zcat ~/GA_project/data/RNA/RNA_trimmed/*)
