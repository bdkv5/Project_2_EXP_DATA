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
with(outcome1,hist(outcome1$Global_active_power,col = "yellow",xlab = "Global Active Power (kilowatts)",ylab ="Frequency",main = "Global Active Power"))

dev.copy(png,file="plot1.png")
dev.off()



