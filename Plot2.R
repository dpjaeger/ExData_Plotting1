##To be run after Plot1.R
##Chart2
opar = par(ps = 10)
png(filename = "plot2.png", width = 480, height = 480)
Chart2 <- ggplot(data = pow, aes(x = datetime, y = Global_active_power))
Chart2 <- Chart2 + geom_line()
Chart2 <- Chart2 + xlab("") + ylab("Global active power (kilowatts)")
Chart2 <- Chart2 + scale_x_datetime(labels = date_format("%a"), breaks = date_breaks("1 day"))
Chart2 <- Chart2 + theme_bw()
Chart2 <- Chart2 + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Chart2
dev.off()
