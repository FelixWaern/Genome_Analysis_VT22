#! /bin/bash -l
#SBATCH -A uppmax2022-2-5 
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J trimmomatic_fewa6597
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

cd /home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/RNA_raw_data
adapter_path="$TRIMMOMATIC_HOME/adapters/TruSeq3-PE-2.fa"
# Commands

#29
trimmomatic PE ERR2036629_1.fastq.gz ERR2036629_2.fastq.gz ER2036629_fw_paired.fq.qz ER2036629_fw_unpaired.fq.qz ER2036629_rev_paired.fq.qz ER2036629_rev_unpaired.fq.qz ILLUMINACLIP:$adapter_path:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#mv ER2036629_fw_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/ 
#mv ER2036629_fw_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036629_rev_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036629_rev_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/

#30
#trimmomatic PE ERR2036630_1.fastaq.gz ERR2036630_2.fastq.gz \
#ER2036630_fw_paired.fq.qz ER2036630_fw_unpaired.fq.qz ER2036630_rev_paired.fq.qz ER2036630_rev_unpaired.fq.qz \
#ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#mv ER2036630_fw_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036630_fw_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036630_rev_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036630_rev_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/

#31
#trimmomatic PE ERR2036631_1.fastaq.gz ERR2036631_2.fastq.gz \
#ER2036631_fw_paired.fq.qz ER2036631_fw_unpaired.fq.qz ER2036631_rev_paired.fq.qz ER2036631_rev_unpaired.fq.qz \
#ILLUINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#mv ER2036631_fw_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036631_fw_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036631_rev_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036631_rev_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/

#32
#trimmomatic PE ERR2036632_1.fastaq.gz ERR2036632_2.fastq.gz \
#ER2036632_fw_paired.fq.qz ER2036632_fw_unpaired.fq.qz ER2036632_rev_paired.fq.qz ER2036632_rev_unpaired.fq.qz \
#ILLUINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#mv ER2036632_fw_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036632_fw_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036632_rev_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036632_rev_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/

#33
#trimmomatic PE ERR2036633_1.fastaq.gz ERR2036633_2.fastq.gz \
#ER2036633_fw_paired.fq.qz ER2036633_fw_unpaired.fq.qz ER2036633_rev_paired.fq.qz ER2036633_rev_unpaired.fq.qz \
#ILLUINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#mv ER2036633_fw_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036633_fw_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036633_rev_paired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/
#mv ER2036633_rev_unpaired.fq.qz /home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/trimmomatic/

# ERR2036629_1.fastq.gz  ERR2036630_1.fastq.gz  ERR2036631_1.fastq.gz  ERR2036632_1.fastq.gz  ERR2036633_1.fastq.gz
# ERR2036629_2.fastq.gz  ERR2036630_2.fastq.gz  ERR2036631_2.fastq.gz  ERR2036632_2.fastq.gz  ERR2036633_2.fastq.gz
