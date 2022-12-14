# Energy sub metering plot

png(filename = "plot3.png",width = 480,
    height = 480)


with(EPC_subset, plot(datetime,Sub_metering_1, type = "l",
                      ylab = "Energy sub metering"))
with(EPC_subset, lines(datetime,Sub_metering_2, type = "l",
                       col = "red"))
with(EPC_subset, lines(datetime,Sub_metering_3,type = "l",
                       col = "blue"))
legend("topright", lty = c(1,1,1),col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
