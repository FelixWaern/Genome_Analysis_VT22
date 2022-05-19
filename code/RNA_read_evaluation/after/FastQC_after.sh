#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J FastQC_after_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC


# Commands
path="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/*"

fastqc \
 $path \
 -t 4 \
 -o /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/fastqc/fastqc_post_trim




