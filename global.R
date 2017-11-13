library(shiny)
library(ggplot2)

drug_data<-read.csv("./Data/drug-use-by-age.csv",stringsAsFactors = FALSE,header = TRUE)
drug_data<-drug_data[,-2]

colnames(drug_data)<-c("Age","Alcohol_use","Alcohol_frequency","Marijuana_Use","Marijuana_frequency","Cociaine_use","Cocaine_frequency","Crack_use","Crack_frequency","Heroin_use","Heroin_frequency","Hallucinogen_Use","Hallucinogen_frequency","Inhalant_use","Inhalant_frequency","Pain_releiver_use","Pain_releiver_frequency","Oxycontin_use","Oxycontin_frequency","Tranquilizer_use","Tranquilizer_frequency","Stimulant_use","Stimulant_frequency","Meth_use","Meth_frequency","Sedative_use","Sedative_frequency")

drug_data$Age<-as.factor(drug_data$Age)


drugs<-as.character(colnames(drug_data)) 
drugs<-drugs[-1]