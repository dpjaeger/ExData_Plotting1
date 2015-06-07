##To be run after Plot1.R and Plot2.R
##Chart3

##Melt the dataset first to create this plot
pow2 <- pow[ ,c(7,8,9,11)]
pow2$datetime <- as.POSIXct(pow2$datetime)
pow2 <- melt(pow2, id="datetime")

opar = par(ps = 10)
png(filename = "plot3.png", width = 480, height = 480)
Chart3 <- ggplot(data = pow2, aes(x = datetime, y=value, group=variable, colour=variable))
Chart3 <- Chart3 + geom_line()
Chart3 <- Chart3 + xlab("") + ylab("Energy sub metering")
Chart3 <- Chart3 + scale_x_datetime(labels = date_format("%a"), breaks = date_breaks("1 day"))
Chart3 <- Chart3 + theme_bw()
Chart3 <- Chart3 + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
Chart3 <- Chart3 + scale_color_manual(values = c("Black", "Red", "Blue"))
Chart3 <- Chart3 + theme(legend.title=element_blank())
Chart3 <- Chart3 + theme(legend.position=c(.80, .85))
Chart3
dev.off()
