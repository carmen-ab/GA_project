#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J 01_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# Your commands

bwa mem -t 2 ref_db ~/GA_project/data/RNA/RNA_trimmed/ERR2036629_P1.trim.fastq.gz ~/GA_project/data/RNA/RNA_trimmed/ERR2036629_P2.trim.fastq.gz | samtools sort -o 29.bam 
bwa mem -t 2 ref_db ~/GA_project/data/RNA/RNA_trimmed/ERR2036630_P1.trim.fastq.gz ~/GA_project/data/RNA/RNA_trimmed/ERR2036630_P2.trim.fastq.gz | samtools sort -o 30.bam 
bwa mem -t 2 ref_db ~/GA_project/data/RNA/RNA_trimmed/ERR2036631_P1.trim.fastq.gz ~/GA_project/data/RNA/RNA_trimmed/ERR2036631_P2.trim.fastq.gz | samtools sort -o 31.bam 
bwa mem -t 2 ref_db ~/GA_project/data/RNA/RNA_trimmed/ERR2036632_P1.trim.fastq.gz ~/GA_project/data/RNA/RNA_trimmed/ERR2036632_P2.trim.fastq.gz | samtools sort -o 32.bam 
bwa mem -t 2 ref_db ~/GA_project/data/RNA/RNA_trimmed/ERR2036633_P1.trim.fastq.gz ~/GA_project/data/RNA/RNA_trimmed/ERR2036633_P2.trim.fastq.gz | samtools sort -o 33.bam
