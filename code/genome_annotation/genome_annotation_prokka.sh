#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J prokka_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
moduel load prokka

 
# Commands
# prokka [options] <contigs.fasta>
prokka \
 --addgenes \
 --species \
 --strain   \
 /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/assembled_genome.contigs.fasta


# path to assembly
#/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/assembled_genome.contigs.fasta

