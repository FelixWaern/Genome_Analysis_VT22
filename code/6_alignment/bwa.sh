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
module load samtools
module load bwa

# Paths
input_path="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/"
output_dir="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/bwa/"
my_genome="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/canu/assembled_genome.contigs.fasta"

# Commands
# #-t == number of threads for bwa, take 4
# #-@ == number of threads for samtools sort, take 4
#Follow https://www.biostars.org/p/332056/ and http://bio-bwa.sourceforge.net/bwa.shtml and http://www.htslib.org/doc/samtools-sort.html

bwa index $my_genome
# Do the same commands for each read file
# Format: ER2036629_fw_paired.fq.qz  ER2036629_fw_unpaired.fq.qz  ER2036629_rev_paired.fq.qz  ER2036629_rev_unpaired.fq.qz
#29

bwa mem -t 4 $my_genome $input_path/ER2036629_fw_paired.fq.gz $input_path/ER2036629_rev_paired.fq.gz | samtools sort -@ 4 -o $output_dir/29.bam

#30

bwa mem -t 4 $my_genome $input_path/ER2036630_fw_paired.fq.gz $input_path/ER2036630_rev_paired.fq.gz | samtools sort -@ 4 -o $output_dir/30.bam

#31

bwa mem -t 4 $my_genome $input_path/ER2036631_fw_paired.fq.gz $input_path/ER2036631_rev_paired.fq.gz | samtools sort -@ 4 -o $output_dir/31.bam

#32

bwa mem -t 4 $my_genome $input_path/ER2036632_fw_paired.fq.gz $input_path/ER2036632_rev_paired.fq.gz | samtools sort -@ 4 -o $output_dir/32.bam

#33 

bwa mem -t 4 $my_genome $input_path/ER2036633_fw_paired.fq.gz $input_path/ER2036633_rev_paired.fq.gz | samtools sort -@ 4 -o $output_dir/33.bam

