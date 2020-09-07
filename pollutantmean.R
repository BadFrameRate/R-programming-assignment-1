pollutantmean<-function(directory,pollutant,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    for(i in id){
      openfile<-read.csv(paste(directory,all_files[i],sep="/"))
    }
    head(openfile)
  }
}