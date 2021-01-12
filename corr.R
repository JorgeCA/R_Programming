corr <- function(directory, threshold = 0){
  # Write a function that takes a directory of data files and a threshold for complete cases and calculates the 
  # correlation between sulfate and nitrate for monitor locations where the number of completely observed 
  # cases (on all variables) is greater than the threshold. The function should return a vector of correlations 
  # for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, 
  # then the function should return a numeric vector of length 0.
  
  completeData <- complete(directory)
  
  if (sum(which(completeData$nobs>threshold))==0){
    NULL
  }
  else{
    thresh_index <- as.numeric(completeData[which(completeData$nobs>threshold),]$id)
    files <- paste(directory,"/",list.files(directory)[thresh_index], sep = "")
    readAllFiles <- lapply(files,read.csv)
    correlationValues <- unlist(lapply(readAllFiles, function(x){cor(x[,2],x[,3],use="pairwise.complete.obs")}))
    correlationValues
  }
}
