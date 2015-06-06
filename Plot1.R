##Course Project 1
install.packages("ggplot2")
library("ggplot2")
install.packages("scales")
library("scales")
pow <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
pow2 <- pow[pow$Date == "1/2/2007" | pow$Date == "2/2/2007", ]
pow2$Date <- strptime(pow2$Date, "%d/%m/%Y")
pow2$Day <- weekdays(pow2$Date, abbreviate = TRUE)
pow2$datetime <- paste(pow2$Date, pow2$Time)
pow2$datetime <- strptime(pow2$datetime, "%Y-%m-%d %X")

##Chart 1
opar = par(ps = 10)
png(filename = "plot1.png", width = 480, height = 480)
Chart1 <- hist(pow2$Global_active_power, col = "RED", xlab = "Global active power (kilowatts)", 
               main = "Global Active Power", ylim = c(0,1200))
dev.off()

##Chart2
a <- ggplot(data = pow2, aes(x = datetime, y = Global_active_power))
a <- a + geom_line()
a <- a + xlab("") + ylab("Global active power (kilowatts)")
a <- a + scale_x_datetime(labels = date_format("%Y"),breaks = "1 hour")
a
pow2$datetime2 <- strptime(pow2$datetime, "%Y-%m-%d %X")
