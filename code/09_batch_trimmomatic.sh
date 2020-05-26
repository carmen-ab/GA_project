#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 05_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools
module load  trimmomatic/0.36

# Your commands

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 \
-basein ~/GA_project/data/RNA/RNA_raw_data/ERR2036629_1.fastq.gz \
-baseout ~/GA_project/analyses/02_trimming/04_trimmomatic/29.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 \
