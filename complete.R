complete<-function(directory,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    obs<-integer(length(id))
    for(i in id){
      openfile<-read.csv(paste(directory,all_files[i],sep="/"))
      obs[i]<-length(openfile[,1])
    }
    output<-data.frame(id,obs)
    output
  }
}