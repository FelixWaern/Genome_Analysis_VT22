#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J blast_felix
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load blast

#Input file(s) path
my_input_genome="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/assembled_genome.contigs.fasta"
ref_genome="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/ncbi-genomes-2022-05-11/GCF_000284315.1_ASM28431v1_genomic.fna"

#Output directory
outdir="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/blast"

# Commands
# Format: blastn –db nt –query nt.fsa –out results.out  
# notes: Follow: https://www.ncbi.nlm.nih.gov/books/NBK569856/
# It appears we need to make a database for the reference genome
# Create a database for the blastn
# Format: makeblastdb –in mydb.fsa –dbtype nucl –parse_seqids	
# Follow: https://www.ncbi.nlm.nih.gov/books/NBK569841/


# Running the actual blastn
blastn -query $my_input_genome -subject $ref_genome -outfmt 6 -out $outdir/blastn_result.tab 

