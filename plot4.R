outcome <- read.csv(file = "household_power_consumption2.txt",sep=";", na.strings = "?" )
outcome$Date <- as.Date(outcome$Date,"%d/%m/%Y")
head(outcome)
outcome$Time <- paste(outcome$Date,outcome$Time,sep=" ")
outcome$Time <- strptime(outcome$Time,format = "%Y-%m-%d %H:%M:%S")
print(class(outcome$Time))
outcome1 <- subset(outcome, (outcome$Date >= as.Date("2007-02-01"))&(outcome$Date <= as.Date("2007-02-02")))

print(head(outcome1))
plot.new()
par(mar = c(4,4,4,4), mfrow =c(2,2))
plot(outcome1$Time,outcome1$Global_active_power,xlab = "2 Day period of Reading  ",ylab ="Global Active Power(Kilowatts) ",type = "l",col = "red")

plot(outcome1$Time,outcome1$Voltage,xlab = "2 Day period of Reading ",ylab ="Voltage ",type = "l",col = "cyan")

plot(outcome1$Time,outcome1$Sub_metering_1,type="n",xlab = "Date time ",ylab ="Energy sub metering")
points(outcome1$Time,outcome1$Sub_metering_1,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "red")
points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ")
points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green")
legend("topright",legend =c("sub_1","sub_2","sub_3"),col = c("red","blue","green"),lwd=c(1,1,1),lty = c(1,1,1))

plot(outcome1$Time,outcome1$Global_reactive_power,xlab = "2 Day period of Reading ",ylab ="Global Reactive power ",type = "l",col = "dark red")


dev.copy(png,file="plot4.png")
dev.off()




