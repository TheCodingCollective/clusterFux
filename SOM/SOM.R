#SOM.R
#Author: Ciera Martinez

#enter data
sdata <- read.table("../data/modencodefly_pooledreps_count_table.txt", header = TRUE, row.names = "gene")
key <- read.table("../data/modencodefly_phenodata.txt", header = TRUE)

key
head(sdata)
names(sdata)

#Step 1: Normalize Count Data
#Normalized Read Count

#Using edgeR to get normalized read count
library(edgeR)

counts <- sdata
colnames(counts)
counts[is.na(counts)] <- 0

#First get normalized read count
y <- DGEList(counts=counts)

#Look at samples 
y$samples

##Look at library size
y$pseudo<- equalizeLibSizes(y)

write.csv(y$pseudo$pseudo,"../data/normalized_count_file.csv")

#Step 2: Find Avg. between rep per sample type


