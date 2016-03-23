#R script for opening the file and reading that
library(lubridate)
library(dplyr)

#Read all dataset
dataset <- read.table("household_power_consumption.txt", header = TRUE  , sep = ";", na.strings = "?" ,nrows = 2075259)
dataset[,1] <- dmy(dataset[,1])
#Subset the desired two dates
dateindex <- dataset[,1] >= ymd("2007-02-01") & dataset[,1] <= ymd("2007-02-02")
twodays <- dataset[dateindex,]
rm("dataset") #releasing some memory and there are not NA in twodays