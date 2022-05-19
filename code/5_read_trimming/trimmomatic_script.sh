#! /bin/bash -l
#SBATCH -A uppmax2022-2-5 
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J trimmomatic_fewa6597
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

# Path raw data
raw_data_path="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/RNA_raw_data"

cd /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic
adapter_path="$TRIMMOMATIC_HOME/adapters/TruSeq2-PE.fa"

# Commands

#29
trimmomatic PE -phred33 $raw_data_path/ERR2036629_1.fastq.gz $raw_data_path/ERR2036629_2.fastq.gz \
ER2036629_fw_paired.fq.gz ER2036629_fw_unpaired.fq.gz \
ER2036629_rev_paired.fq.gz ER2036629_rev_unpaired.fq.gz \
ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:40 MAXINFO:40:0.5

#30
trimmomatic PE -phred33 $raw_data_path/ERR2036630_1.fastq.gz $raw_data_path/ERR2036630_2.fastq.gz \
ER2036630_fw_paired.fq.gz ER2036630_fw_unpaired.fq.gz \
ER2036630_rev_paired.fq.gz ER2036630_rev_unpaired.fq.gz \
ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:40 MAXINFO:40:0.5

#31
trimmomatic PE -phred33 $raw_data_path/ERR2036631_1.fastq.gz $raw_data_path/ERR2036631_2.fastq.gz \
ER2036631_fw_paired.fq.gz ER2036631_fw_unpaired.fq.gz \
ER2036631_rev_paired.fq.gz ER2036631_rev_unpaired.fq.gz \
ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:40 MAXINFO:40:0.5

#32
trimmomatic PE -phred33 $raw_data_path/ERR2036632_1.fastq.gz $raw_data_path/ERR2036632_2.fastq.gz \
ER2036632_fw_paired.fq.gz ER2036632_fw_unpaired.fq.gz \
ER2036632_rev_paired.fq.gz ER2036632_rev_unpaired.fq.gz \
ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:40 MAXINFO:40:0.5

#33
trimmomatic PE -phred33 $raw_data_path/ERR2036633_1.fastq.gz $raw_data_path/ERR2036633_2.fastq.gz \
ER2036633_fw_paired.fq.gz ER2036633_fw_unpaired.fq.gz \
ER2036633_rev_paired.fq.gz ER2036633_rev_unpaired.fq.gz \
ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:40 MAXINFO:40:0.5

# ERR2036629_1.fastq.gz  ERR2036630_1.fastq.gz  ERR2036631_1.fastq.gz  ERR2036632_1.fastq.gz  ERR2036633_1.fastq.gz
# ERR2036629_2.fastq.gz  ERR2036630_2.fastq.gz  ERR2036631_2.fastq.gz  ERR2036632_2.fastq.gz  ERR2036633_2.fastq.gz
