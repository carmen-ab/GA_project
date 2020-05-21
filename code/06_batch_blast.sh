#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 02_synteny
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools blast/2.9.0+

# Your commands

blastn -subject ~/GA_project/analyses/04_synteny/DNA_ferriphilum.fasta -query ~/GA_project/analyses/04_synteny/DNA_ferrooxidans.fasta -out blast -outfmt 6 -num_threads 2
