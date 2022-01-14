install.packages("data.table")

library(data.table)

output<-NULL

#setwd('/home/dnanexus/unzipped')

for(i in 1:22){

    print(paste0("Formatting chr. no. ", i))

    table<-fread(paste0("chr",i,".dose.vcf"),header=F)
    #head(table)
    names(table) <- append(c("#CHROM","POS","ID","REF","ALT","QUAL","FILTER","INFO","FORMAT"),paste0("L",1:(ncol(table)-9)))

    output<-rbind(output, table)
    print(paste0("Formatted ",i," chromosome(s)"))
}

fwrite(output,file="fixed_allchr.dose.vcf", sep="\t",quote=F, col.names=T,row.names=F)

print("Done formatting all chromosomes")