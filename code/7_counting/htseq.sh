#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load htseq
module load samtools

# Paths
bam_path="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/bwa/*.bam"
bam_dir="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/bwa/"
gff="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/prokka/PROKKA_05172022_good.gff"
output_dir="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/htseq/"

# Commands
# Follow http://manpages.ubuntu.com/manpages/trusty/man1/htseq-count.1.html 
# Maybe use samtools maybe not???

# samtools index each
samtools index $bam_dir/29.bam
samtools index $bam_dir/30.bam
samtools index $bam_dir/31.bam
samtools index $bam_dir/32.bam
samtools index $bam_dir/33.bam

htseq-count -f bam -r pos -s no -t CDS -i ID $bam_path $gff > $output_dir/htseq.counts.txt
