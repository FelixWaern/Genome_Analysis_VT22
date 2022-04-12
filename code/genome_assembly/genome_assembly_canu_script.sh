#! /bin/bash -l
#SBATCH -A uppmax2022-2-5 
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J canu_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load canu/2.0


# Commands
canu -d /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu \
 -p assembled_genome  genomeSize=2.4m -useGrid=False -maxThreads=4 \
 -pacbio /home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/DNA_raw_data/*.fastq.gz

