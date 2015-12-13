##Plot 4
data <- read.csv("C:/Users/Edward Wang/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
newdata <- rbind(data[data$Date == "1/2/2007",], data[data$Date == "2/2/2007",])
par(mfrow = c(2,2), mar = c(4,4,2,2))
plot(newdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", axes = F)         ##plot1
axis(1, at=seq(0,2880,1440), labels=c("Thu","Fri","Sat"))
axis(2, at=seq(0,8,2), labels=c(0,2,4,6,8))
box()
plot(newdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", axes = F)                ##plot2
axis(1, at=seq(0,2880,1440), labels=c("Thu","Fri","Sat"))
axis(2)
box()
plot(newdata$Sub_metering_1, type = "l", col = "black", axes = F, xlab = "", ylab = "Energy sub metering")         ##plot3
lines(newdata$Sub_metering_2, type="l",  col="red")
lines(newdata$Sub_metering_3, type="l",  col="blue")
axis(1, at=seq(0,2880,1440), labels=c("Thu","Fri","Sat"))
axis(2)
box()
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.6)
plot(newdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", axes = F)        ##plot4
axis(1, at=seq(0,2880,1440), labels=c("Thu","Fri","Sat"))
axis(2, at=seq(0,0.5,0.1))
box()
dev.copy(png, file = "plot4.png")
dev.off()