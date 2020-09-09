complete<-function(directory,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    obs<-integer(length(id))
    for(i in seq_along(id)){
      openfile<-read.csv(paste(directory,all_files[id[i]],sep="/"))
      na_removal<-openfile[,2][!is.na(openfile[,2])]
      obs[i]<-length(na_removal)
    }
    output<-data.frame(id,obs)
    output
  }
}