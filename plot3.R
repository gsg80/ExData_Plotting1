power <-read.csv("household_power_consumption.txt", sep=";")
subPower <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007" , ]
plot(strptime(paste(subPower$Date, subPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
            as.numeric(subPower$Sub_metering_1), type ="n", main ="", xlab="", 
            ylab = "Energy sub metering", ylim = c(0.0,38.0))
points(strptime(paste(subPower$Date, subPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
            as.numeric(as.character(subPower$Sub_metering_1)), type ="l")
points(strptime(paste(subPower$Date, subPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
            as.numeric(as.character(subPower$Sub_metering_2)), type ="l", col="red")
points(strptime(paste(subPower$Date, subPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
            as.numeric(as.character(subPower$Sub_metering_3)), type ="l", col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
            col = c("black", "red", "blue"), lty = 1)
dev.copy(png, file = "plot3.png")
dev.off()