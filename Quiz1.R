library(readr)
hw1_data <- read_csv("hw1_data.csv")
#View(hw1_data)

#Question 11
names(hw1_data)

#Question 12
hw1_data[1:2,]

#Question 13
nrow(hw1_data)

#Question 14
hw1_data[152:153,]

#Question 15
hw1_data$Ozone[47]

#Question 16
sum(is.na(hw1_data$Ozone))

#Question 17
mean(hw1_data$Ozone, na.rm=TRUE)

#Question 18
mean(hw1_data[which(hw1_data$Ozone >31 & hw1_data$Temp > 90),]$Solar.R)

#Question 19
mean(hw1_data[which(hw1_data$Month==6),]$Temp)

#Question 20
max(hw1_data[which(hw1_data$Month==5),]$Ozone, na.rm=TRUE)
