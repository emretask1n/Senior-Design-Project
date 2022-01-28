# Load packages
library("TCGAbiolinks")
library("limma")
library("edgeR")
library("glmnet")
library("factoextra")
library("FactoMineR")
library("caret")
library("SummarizedExperiment")
library("gplots")
library("survival")
library("survminer")
library("RColorBrewer")
library("gProfileR")
library("genefilter")


query <- GDCquery(project = "TCGA-LUAD", 
                  data.category = "Biospecimen",
                  data.type = "Slide Image", 
                  data.format = "SVS")
GDCdownload(query)
clinical.SVS.all <- GDCprepare(query)
names(clinical.SVS.all)


query2 <- GDCquery(project = "TCGA-LUSC", 
                   data.category = "Biospecimen",
                   data.type = "Slide Image", 
                   data.format = "SVS")
GDCdownload(query2)
clinical.SVS.all <- GDCprepare(query2)
names(clinical.SVS.all)



