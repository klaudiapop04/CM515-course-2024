# R script for Group Assignment Module 13
#biological question: are MSH1 and RADA involved in maintaining low mutation rates in these genomes?

#Following features: Genotype, Genome, Mutation type (Indels or substitutions), Replicate, Mutation Rate

#Include Brief Written Description of why choices were made

library(ggplot2)

MutationRate = read.delim ("MutationRate.txt")
str(MutationRate)

#mutation rate on the y, three genotypes on the x axis, categorical


Plot1 <- ggplot (data=MutationRate, aes(x=Genotype, y=MutationRate, color=MutationType)) + geom_point(alpha=0.5)

Plot1


Plot2 <- ggplot (data=MutationRate, aes(x=Genotype, y=MutationRate, color=MutationType)) + geom_point(alpha=0.5) + scale_y_log10()

Plot2

#insert plot 3 
library(ggthemes)

Plot3 <- ggplot (data=MutationRate, aes(x=Genotype, y=MutationRate, color=Genotype)) + geom_point(alpha=0.5, size=2) + scale_y_log10() + facet_grid(MutationType~Genome) + theme_bw() +ylab("Mutation Rate (log10)")

Plot3



pdf ("Plot3.pdf")  
Plot3  
dev.off()
