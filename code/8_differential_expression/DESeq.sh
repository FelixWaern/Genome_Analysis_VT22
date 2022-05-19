#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J DESeq2
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load R
module load R_packages/4.1.1

# Follow: http://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html#htseq-count-input
#Plan: write new script in R and call that script in here
# Remember: The files input into the R script must be in an appropriate format
# Fortmat is; File1:col1:col2, File2:col1:col3, Fil3:col1:col4 and so on



# Commands


# Run the R script for differential expression
Rscript deseq2.r
exit 0
