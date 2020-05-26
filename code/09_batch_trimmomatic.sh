#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 01_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools
module load  trimmomatic/0.36

# Your commands

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 \
-basein ~/GA_project/data/DNA/DNA_raw_data/ERR2036629_1.fastq.gz \
-baseout ~/GA_project/analyses/02_trimming/04_trimmomatic/ERR2036629_trimmed.fastq.gz \ 
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/Tru-Seq3-PE.fa \
LEADING:15 TRAILING:15 SLIDINGWINDOW:4:10 MINLEN:36
