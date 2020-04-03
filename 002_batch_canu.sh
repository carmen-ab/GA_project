#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 18:00:00
#SBATCH -J 002_canu_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user carmen.abaor@gmail.com

# Load modules
module load bioinfo-tools
module load canu
# Your commands
canu \
-assemble \
-p canu -d ./analyses/DNA/002_canu \
genomeSize=2.5m \
corThreads=2 \
stopOnReadQuality=false \
-pacbio-raw ./data/DNA/DNA_raw_data/ERR2028495.fastq.gz ./data/DNA/DNA_raw_data/ERR2028496.fastq.gz ./data/DNA/DNA_raw_data/ERR2028497.fastq.gz ./data/DNA/DNA_raw_data/ERR2028500.fastq.gz ./data/DNA/DNA_raw_data/ERR2028501.fastq.gz ./data/DNA/DNA_raw_data/ERR2028502.fastq.gz
