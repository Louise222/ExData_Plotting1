# make sure the R script and dataset are both on your working repository
filename<-"household_power_consumption.txt"
data<-read.table(filename,header = T,sep=";",na="?",
                 colClasses=c(rep("character",2),rep("numeric",7)))
dim(data)  # 2075259*9
newdata<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
dim(newdata)  # 2880*9
x<-paste(newdata$Date,newdata$Time)
newdata$DateTime<-strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newdata)<-1:nrow(newdata)
dim(newdata)  # 2880*10