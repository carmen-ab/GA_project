#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 02_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools prokka/

# Your commands

prokka \
 --outdir analyses/03_annotation/01_prokka --force --prefix prokka_ \
 --addgenes --genus Leptospirillum --species ferriphilum --strain DSM_14647 \
 --kingdom Bacteria --gram neg --usegenus --cpus 2 --rfam \
~/GA_project/analyses/01_assembly/01_canu/canu.contigs.fasta
