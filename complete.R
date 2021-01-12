complete <- function(directory, id = 1:332){
  # Write a function that reads a directory full of files and reports the number of completely observed cases 
  # in each data file. The function should return a data frame where the first column is the name of the file and 
  # the second column is the number of complete cases. 
  result <- data.frame(id=numeric(),nobs=numeric())
  
  files <- paste(directory,"/",list.files(directory)[id], sep = "")
  
  for (f in files) {
    read <- read.csv(f)
    result <- rbind(result,data.frame(id=max(read$ID),nobs=length(which(is.na(read$nitrate)==FALSE & is.na(read$sulfate)==FALSE))))
  }
  
  result
}