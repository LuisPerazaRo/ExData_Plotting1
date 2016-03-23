#Second plot

png("plot2.png") #Size is in the default properties 480 px for width and height
plot(twodays$Global_active_power, type = "l", xaxt = "n" , ylab = "Global Active Power (Killowatts)", xlab = "", main = NULL)
title(main = "Global Active Power")
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
dev.off() # Close the device