# NOTE: this assumes household_power_consumption.txt is present in the working directory

source("loadData.R")

png(filename = "plot2.png", width = 504, height = 504, bg = NA, type = "cairo")

data <- loadData()

x <- data$Date
y <- data$Global_active_power

plot(x, y, type = "n", ylab = "Global Active Power (kilowatts)", xlab = NA)
lines(x, y)

dev.off()

