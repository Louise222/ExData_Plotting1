source("load_data.R")
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(newdata$Global_active_power,col = "red",
     xlab = "Global Active Power (kilowatts)",ylab = "Frequency",
     main="Global Active Power",breaks=12,ylim=c(0,1200))
dev.off()