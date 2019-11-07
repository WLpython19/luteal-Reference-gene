DESeq_DEG_dosing_Nov2<-function(data_table, filename){
  cust_table<-read.table(data_table,sep=",", header=TRUE)
  cust_dds<-DESeqDataSetFromHTSeqCount(sampleTable=cust_table, directory=getwd(), design=~Treat_ment)
  dds_DEG<-DESeq(cust_dds)
  dds_results<-results(dds_DEG, contrast=c("Treat_ment","Group1","Group2"))
  write.csv(final_result, filename)
  return(filename)
}