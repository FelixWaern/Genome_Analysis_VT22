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
module load prokka

 
# Commands
# prokka [options] <contigs.fasta>
prokka --outdir /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/prokka --force /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/*.contigs.fasta


# path to results
#/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/prokka
# path to assembly
#/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/assembled_genome.contigs.fasta

