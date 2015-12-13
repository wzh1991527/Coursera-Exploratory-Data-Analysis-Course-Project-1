##Plot 2
data <- read.csv("C:/Users/Edward Wang/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
newdata <- rbind(data[data$Date == "1/2/2007",], data[data$Date == "2/2/2007",])
plot(newdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowatts)", axes = F)
axis(1, at=seq(0,2880,1440), labels=c("Thu","Fri","Sat"))
axis(2, at=seq(0,8,2), labels=c(0,2,4,6,8))
box()
dev.copy(png, file = "plot2.png")
dev.off()