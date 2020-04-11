#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 18:00:00
#SBATCH -J 08_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules

module load bioinfo-tools canu/2.0

# Your commands

canu \
-p canu -d GA_project/analyses/01_assembly \
genomeSize=2.6m \
-pacbio-raw GA_project/data/DNA/DNA_raw_data/ERR2028*.fastq.gz \
stopOnReadQuality=false \
maxThreads=4
