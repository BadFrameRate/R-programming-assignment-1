pollutantmean<-function(directory,pollutant,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    temp_sum<-numeric(length(id))
    temp_obs<-numeric(length(id))
    for(i in id){
      openfile<-read.csv(paste(directory,all_files[i],sep="/"))
      temp_sum[i]<-sum(openfile[,pollutant],na.rm=T)
      temp_obs[i]<-sum(!is.na(openfile[,pollutant]))
    }
    sum(temp_sum)/sum(temp_obs)
  }
}