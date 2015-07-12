# NOTE: this assumes household_power_consumption.txt is present in the working directory

source("loadData.R")

png(filename = "plot3.png", width = 504, height = 504, bg = NA, type = "cairo")

data <- loadData()

plotcol <- c("black", "red", "blue")

x <- data$Date

plot(x, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = NA)

lines(x, data$Sub_metering_1, col = plotcol[1])
lines(x, data$Sub_metering_2, col = plotcol[2])
lines(x, data$Sub_metering_3, col = plotcol[3])

legend("topright", colnames(data)[6:8], col = plotcol, lwd = 1)

dev.off()

