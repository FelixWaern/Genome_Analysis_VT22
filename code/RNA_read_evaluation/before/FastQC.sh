#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J FastQC_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
moduel load FastQC


# Commands
path="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/RNA_raw_data/*"

fastqc \
 $path \
 -t 4 \
 -o /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/fastqc/fastqc_pre_trim




