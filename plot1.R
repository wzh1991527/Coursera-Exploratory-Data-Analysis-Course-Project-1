##Plot 1
data <- read.csv("C:/Users/Edward Wang/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
newdata <- rbind(data[data$Date == "1/2/2007",], data[data$Date == "2/2/2007",])
hist(newdata$Global_active_power, col = "red", xlab = "Global Active Power (killowatts)", main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()