#built plot 3

png("plot3.png") #Size is in the default properties 480 px for width and height
plot(twodays$Sub_metering_1, type = "l", xaxt = "n" , xlab = "", main = NULL, ylab = "Energy sub metering")
lines(twodays$Sub_metering_2, col = "red" , xaxt = "n" , ylab = "", xlab = "", main = NULL)
lines(twodays$Sub_metering_3, col = "blue", xaxt = "n" , ylab = "", xlab = "", main = NULL)
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", names(twodays[1,7:9]), lty = 1, col = c("black","red","blue"))
dev.off() # Close the device