## Exploratory Data Analysis Course Project 1

##Load packages and data
setwd("ExData_Plotting1")
install.packages("ggplot2")
library("ggplot2")
install.packages("scales")
library("scales")
install.packages("reshape2")
library("reshape2")
library("tidyr")
library("gridExtra")
pow_full <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
pow <- pow_full[pow_full$Date == "1/2/2007" | pow_full$Date == "2/2/2007", ]
pow$Date <- strptime(pow$Date, "%d/%m/%Y")
pow$Day <- weekdays(pow$Date, abbreviate = TRUE)
pow$datetime <- paste(pow$Date, pow$Time)
pow$datetime <- strptime(pow$datetime, "%Y-%m-%d %X")

##Chart 1
opar = par(ps = 10)
png(filename = "plot1.png", width = 480, height = 480)
Chart1 <- hist(pow$Global_active_power, col = "RED", xlab = "Global active power (kilowatts)", 
               main = "Global Active Power", ylim = c(0,1200))
dev.off()