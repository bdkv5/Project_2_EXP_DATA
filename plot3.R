outcome <- read.csv(file = "household_power_consumption2.txt",sep=";", na.strings = "?" )
outcome$Date <- as.Date(outcome$Date,"%d/%m/%Y")
head(outcome)
outcome$Time <- paste(outcome$Date,outcome$Time,sep=" ")
outcome$Time <- strptime(outcome$Time,format = "%Y-%m-%d %H:%M:%S")
print(class(outcome$Time))
outcome1 <- subset(outcome, (outcome$Date >= as.Date("2007-02-01"))&(outcome$Date <= as.Date("2007-02-02")))

print(head(outcome1))
plot.new()
par(mar = c(4,4,4,4))
plot(outcome1$Time,outcome1$Sub_metering_1,type="n",xlab = "Date time ",ylab ="Energy sub metering",main="METER READING")
points(outcome1$Time,outcome1$Sub_metering_1,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "red",main = "Meter Reading")
points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ",main = "Meter Reading")
points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green",main = "Meter Reading")
par()
legend("topright",legend =c("sub_metering_1","sub_metering_2","sub_metering_3"),col = c("red","blue","green"),lwd=c(4,4,4),lty = c(1,1,1))
dev.copy(png,file="plot3.png")
dev.off()




