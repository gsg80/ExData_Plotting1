power <-read.csv("household_power_consumption.txt", sep=";")
subPower <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007" , ]
plot(strptime(paste(subPower$Date, subPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
     as.numeric(as.character(subPower$Global_active_power)), type ="l", main ="", xlab="", 
     ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()