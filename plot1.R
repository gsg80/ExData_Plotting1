power <-read.csv("household_power_consumption.txt", sep=";")
subPower <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007" , ]
hist(as.numeric(subPower$Global_active_power)/500, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()