pollutantmean<-function(directory,pollutant,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    required_mean<-numeric(length(id))
    headers<-character(length(id))
    for(i in id){
      openfile<-read.csv(paste(directory,all_files[i],sep="/"))
      required_mean[i]<-mean(openfile[,pollutant],na.rm=T)
      headers[i]<-all_files[i]
    }
    names(required_mean)<-headers
    required_mean
  }
}