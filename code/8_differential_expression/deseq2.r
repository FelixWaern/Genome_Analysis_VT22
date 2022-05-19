# Remember that the format must be a 2 columb matrix with first column having name and second counts
# Remeber to name them differently so that "treated" grabs the correct things.
# For png https://stackoverflow.com/questions/45221845/png-iteration-error-in-r
# For paste https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/paste

directory <- "/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/htseq/"
out_dir <- "/home/fewa6597/genome_analysis/Genome_Analysis_VT22/results/deseq/"

sampleFiles <- grep("counts",list.files(directory),value=TRUE)
sampleCondition <- c("continous","continous","mineral","mineral","continous")
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)


library("DESeq2")

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
dds <- DESeq(ddsHTSeq)
res <- results(dds)

resultsNames(dds)
resLFC <- lfcShrink(dds, coef="condition_mineral_vs_continous", type="apeglm")

resOrdered <- res[order(res$pvalue),]
sum(res$padj < 0.1, na.rm=TRUE)
res05 <- results(dds, alpha=0.001)
summary(res05)

print("here")

# Get all the plots
png(paste(out_dir,"res_plot_0001.png", sep = " "))
plotMA(res, ylim=c(-2,2))
dev.off()

png(paste(out_dir,"LFC_plot_0001.png", sep = " "))
plotMA(resLFC, ylim=c(-2,2))
dev.off()

png(paste(out_dir,"count_0001.png", sep = " "))
plotCounts(dds, gene=which.min(res$padj), intgroup="condition")
dev.off(
