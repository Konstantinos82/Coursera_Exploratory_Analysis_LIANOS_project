# Create line chart for Global Active Power

png(filename = "plot2.png",width = 480,
    height = 480)


EPC_subset$datetime <- paste(EPC_subset$Date,EPC_subset$Time)
  
EPC_subset$datetime <- as_datetime(EPC_subset$datetime)
  
plot(EPC_subset$datetime,EPC_subset$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")


dev.off()
