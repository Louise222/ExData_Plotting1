source("load_data.R")
png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(newdata$DateTime,newdata$Sub_metering_1,type = "l",
     col="black",xlab="",ylab = "Energy sub metering")
lines(newdata$DateTime,newdata$Sub_metering_2,col="red")
lines(newdata$DateTime,newdata$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lwd = 1)
dev.off()