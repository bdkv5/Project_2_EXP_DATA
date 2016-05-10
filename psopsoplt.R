
plot.new()
par(mar = c(4,4,4,4))

interc<- c(2,4,6,12)
fuzzy_inter <- c(3.928 , 2.782, 2.7166 , 2.628)
km_inter <- c(3.928, 2.829, 2.8 , 2.704)
pam_inter <- c(3.96,2.834,2.542,2.576)
hydp_inter <- c(3.9287,2.824,2.79,2.6657)
plot(interc,fuzzy_inter ,xlab = "Clusters ",ylab ="Inter distance ",main = "Inter cluster distance",type = "n",col = "red",ylim = c(2,4))


points(interc,fuzzy_inter,type = "l",col = "red")
points(interc,km_inter,type = "l",col = "blue")
points(interc,pam_inter,type = "l",col = "green")
points(interc,hydp_inter,type = "l",col = "yellow")
#points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ")
#points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green")
legend("topright",legend =c("fuzzy","kmeans","pam","hybrid pso"),col = c("red","blue","green","yellow"),lwd=c(1,1,1),lty = c(1,1,1))

#plot(outcome1$Time,outcome1$Global_reactive_power,xlab = "2 Day period of Reading ",ylab ="Global Reactive power ",type = "l",col = "dark red")

dev.copy(png,file="plot6.png")
dev.off()


plot.new()
par(mar = c(4,4,4,4))

interc_<- c(2,4,6,12)
fuzzy_inter_1 <- c(1.13685,0.811,0.711,0.663)
km_inter_1 <- c(1.1368,0.809,0.6767,0.511)
pam_inter_1 <- c(1.0996,0.817,0.7145,0.538)
hydp_inter_1 <- c(1.1368,0.807,0.718,0.517)
plot(interc,fuzzy_inter_1 ,xlab = "Clusters ",ylab ="Intra distance ",main = "Intra cluster distance",type = "n",col = "red",ylim = c(0.1,2))


points(interc,fuzzy_inter_1,type = "l",col = "red",pch=19)
points(interc,km_inter_1,type = "l",col = "blue",pch=19)
points(interc,pam_inter_1,type = "l",col = "green",pch=19)
points(interc,hydp_inter_1,type = "l",col = "yellow",pch=19)
#points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ")
#points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green")
legend("topright",legend =c("fuzzy","kmeans","pam","hybrid pso"),col = c("red","blue","green","yellow"),lwd=c(1,1,1),lty = c(1,1,1))

#plot(outcome1$Time,outcome1$Global_reactive_power,xlab = "2 Day period of Reading ",ylab ="Global Reactive power ",type = "l",col = "dark red")

dev.copy(png,file="plot7.png")
dev.off()

plot.new()
par(mar = c(4,4,4,4))

interc_2<- c(1,2,4,8)
km_inter_2 <- c(1.944,0.7941,0.574,0.43)
pam_inter_2 <- c(1.898,0.777,0.583,0.442)
hydp_inter_2 <- c(1.886,0.7690,0.561,0.3516)
plot(interc,fuzzy_inter_1 ,xlab = "Clusters ",ylab ="Fitness Parameter ",main = "Fitness Evaluation",type = "n",col = "red",ylim = c(0.1,2),pch =5)


points(interc,km_inter_2,type = "l",col = "blue",pch=19)
points(interc,pam_inter_2,type = "l",col = "green",pch=19)
points(interc,hydp_inter_2,type = "l",col = "yellow",pch=19)
#points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ")
#points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green")
legend("topright",legend =c("kmeans","pam","hybrid pso"),col = c("blue","green","yellow"),lwd=c(1,1,1),lty = c(1,1,1))

#plot(outcome1$Time,outcome1$Global_reactive_power,xlab = "2 Day period of Reading ",ylab ="Global Reactive power ",type = "l",col = "dark red")

dev.copy(png,file="plot8.png")
dev.off()



plot.new()
par(mar = c(4,4,4,4))

interc_3<- c(1,2,10,100,1000)
km_inter_3 <- c(Inf,0.7941,0.7941,0.7941,0.7941)
pam_inter_3 <- c(0.777,0.777,0.777,0.777,0.777)
hydp_inter_3 <- c(0.795,0.794,0.7823,0.7682,0.7682)
plot(interc_3,km_inter_3 ,xlab = "Iterations Evaluations ",ylab ="Fitness Parameter ",main = "Fitness Evaluation",type = "n",col = "red",ylim = c(0.75,0.80),pch =5)


points(interc_3,km_inter_3,type = "l",col = "blue",pch=19)
points(interc_3,pam_inter_3,type = "l",col = "green",pch=19)
points(interc_3,hydp_inter_3,type = "l",col = "yellow",pch=19)
#points(outcome1$Time,outcome1$Sub_metering_2,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "blue ")
#points(outcome1$Time,outcome1$Sub_metering_3,xlab = "Date time ",ylab ="Energy sub metering",type = "l",col = "green")
legend("topright",legend =c("kmeans","pam","hybrid pso"),col = c("blue","green","yellow"),lwd=c(1,1,1),lty = c(1,1,1))

#plot(outcome1$Time,outcome1$Global_reactive_power,xlab = "2 Day period of Reading ",ylab ="Global Reactive power ",type = "l",col = "dark red")

dev.copy(png,file="plot9.png")
dev.off()

