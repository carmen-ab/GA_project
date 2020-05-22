#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 16:00:00
#SBATCH -J 02_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools
module load  htseq/0.9.1

# Your commands

for i in {29..33};
do htseq-count -f bam -r pos -t CDS -i ID -s no "${i}.bam" annotation.gff > "${i}.txt";
done;
