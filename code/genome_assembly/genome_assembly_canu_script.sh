#! /bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 13:00:00
#SBATCH -J canu_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
moduel load samtools


# Commands
canu -d /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu\
 -p assembled_genome  genomeSize=2.4m\
 -pacbio /home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/DNA_raw_data/*.fastq.gz

