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
with(outcome1,plot(outcome1$Time,outcome1$Global_active_power,xlab = "2 Day period of Reading  ",ylab ="Global Active Power(Kilowatts) ",type = "l",col = "red",main = "Global Active Power Reading"))
dev.copy(png,file="plot2.png")
dev.off()




