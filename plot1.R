#Global active power

png("plot1.png") #Size is in the default properties 480 px for width and height
hist(twodays$Global_active_power, breaks = 11, col = "red", xlab = "Global Active Power (Killowatts)", main = NULL)
title(main = "Global Active Power")
dev.off() # Close the device