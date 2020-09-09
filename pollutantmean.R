pollutantmean<-function(directory,pollutant,id=1:332){
  if(directory!="specdata") print("Wrong folder")
  else{
    all_files<-list.files(directory)
    temp_sum<-0
    temp_obs<-0
    for(i in id){
      openfile<-read.csv(paste(directory,all_files[i],sep="/"))
      temp_sum<-sum(temp_sum,openfile[,pollutant],na.rm=T)
      temp_obs<-sum(temp_obs,!is.na(openfile[,pollutant]))
    }
    temp_sum/temp_obs
  }
}