##To be run after Plot1.R, Plot2.R, and Plot3.R
##Chart4
Chart4a <- ggplot(data = pow, aes(x = datetime, y = Voltage))
Chart4a <- Chart4a + geom_line()
Chart4a <- Chart4a + xlab("") + ylab("Voltage")
Chart4a <- Chart4a + scale_x_datetime(labels = date_format("%a"), breaks = date_breaks("1 day"))
Chart4a <- Chart4a + theme_bw()
Chart4a <- Chart4a + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

Chart4b <- ggplot(data = pow, aes(x = datetime, y = Global_reactive_power))
Chart4b <- Chart4b + geom_line()
Chart4b <- Chart4b + xlab("") + ylab("Global reactive power")
Chart4b <- Chart4b + scale_x_datetime(labels = date_format("%a"), breaks = date_breaks("1 day"))
Chart4b <- Chart4b + theme_bw()
Chart4b <- Chart4b + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

png(filename = "plot4.png", width = 480, height = 480)
grid.arrange(Chart3, Chart4b, Chart2, Chart4a,
             nrow=2, as.table=TRUE, main="",
             sub=textGrob("", gp=gpar(font=1)))
dev.off()
