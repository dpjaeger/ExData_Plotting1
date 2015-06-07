##To be run after Plot1.R and Plot2.R
##Chart3

opar = par(ps = 10)
png(filename = "plot3.png", width = 480, height = 480)
Chart3 <- ggplot(data = pow, aes(x = datetime))
Chart3 <- Chart3 + geom_line(aes(y = Sub_metering_1), colour = "black", ylab = "Test")
Chart3 <- Chart3 + geom_line(aes(y = Sub_metering_2), colour = "red", ylab = "Test2")
Chart3 <- Chart3 + geom_line(aes(y = Sub_metering_3), colour = "blue", ylab = "Test3")
Chart3 <- Chart3 + xlab("") + ylab("Energy sub metering")
Chart3 <- Chart3 + scale_x_datetime(labels = date_format("%a"), breaks = date_breaks("1 day"))
Chart3 <- Chart3 + theme_bw()
Chart3 <- Chart3 + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Chart3 <- Chart3 + guides(col = guide_legend)
Chart3
dev.off()
