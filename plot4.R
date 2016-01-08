source("load_data.R")
png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))

# figure at top-left
plot(newdata$DateTime,newdata$Global_active_power,type = "l",
     xlab="",ylab = "Global Active Power (kilowatts)")

# figure at top-right
plot(newdata$DateTime,newdata$Voltage,type = "l",
     xlab="datetime",ylab = "Voltage")

# figure at bottom-left
plot(newdata$DateTime,newdata$Sub_metering_1,type = "l",
     col="black",xlab="",ylab = "Energy sub metering")
lines(newdata$DateTime,newdata$Sub_metering_2,col="red")
lines(newdata$DateTime,newdata$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lwd = 1)

# figure at bottom-right
plot(newdata$DateTime,newdata$Global_reactive_power,type = "l",
     xlab="datetime",ylab = "Global_reactive_ower")

dev.off()