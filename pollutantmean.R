pollutantmean <- function(directory, pollutant, id = 1:332){
  ##directory is a character vector of length 1 indicating the location of the csv file
  ##pollutant is the character vector of length 1 indicating which pollutant to calculate the mean for; either "sulfate" or "nitrate"
  ##id is an integer vector indicating which monitor ids to use 
  ##Return the mean of the pollutant across all id monitors ignoring NA values
  
  files <- paste(directory,"/",list.files(directory)[id], sep = "")
  readAllFiles <- lapply(files,read.csv)
  pollutantValues <- unlist(lapply(readAllFiles, function(x){x[,pollutant]}))
  result <- round(mean(pollutantValues, na.rm = TRUE), digits = 3)
  result
}