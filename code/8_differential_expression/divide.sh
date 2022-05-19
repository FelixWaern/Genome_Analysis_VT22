#! /bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 13:00:00
#SBATCH -J dividing_counts
#SBATCH --mail-type=ALL
#SBATCH --mail-user felix.wae@gmail.com


#Divide the file into the appropriate format and then rename them for later extraction

htseqData="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/htseq"
filenameData="/home/fewa6597/genome_analysis/Genome_Analysis_VT22/data/raw_data/RNA_raw_data/*"

n=2
for filename in $filenameData; do
if [[ "$filename" == *"_1"* ]]; then

output=${filename/_1*/}
output=${output##*/}

cut -f 1,$n $htseqData/htseq.counts.txt > $htseqData/${output}_counts.txt

((n=n+1))


fi
done
