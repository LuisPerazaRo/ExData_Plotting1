#Making plot 4

png("plot4.png") #Size is in the default properties 480 px for width and height

par(mfrow = c(2,2))
#First plot at 1,1
plot(twodays$Global_active_power, type = "l", xaxt = "n" , ylab = "Global Active Power (Killowatts)", xlab = "", main = NULL)
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

#Second plot at 1,2
plot(twodays$Voltage, type = "l", xaxt = "n", ylab = "Voltage", xlab = "DateTime", main = NULL)
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

#Third plot at 2,1
plot(twodays$Sub_metering_1, type = "l", xaxt = "n" , xlab = "", main = NULL, ylab = "Energy sub metering")
lines(twodays$Sub_metering_2, col = "red" , xaxt = "n" , ylab = "", xlab = "", main = NULL)
lines(twodays$Sub_metering_3, col = "blue", xaxt = "n" , ylab = "", xlab = "", main = NULL)
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", names(twodays[1,7:9]), lty = 1, col = c("black","red","blue"))

#Forth plot at 2,2
plot(twodays$Global_reactive_power, type = "l", xaxt = "n", ylab = names(twodays)[4], xlab = "DateTime", main = NULL)
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

dev.off()