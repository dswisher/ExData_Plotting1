# NOTE: this assumes household_power_consumption.txt is present in the working directory

source("loadData.R")

data <- loadData()

pane1 <- function() {
  x <- data$Date
  y <- data$Global_active_power
  
  plot(x, y, type = "n", ylab = "Global Active Power", xlab = NA)
  lines(x, y)
}


pane2 <- function() {
  x <- data$Date
  y <- data$Voltage
  
  plot(x, y, type = "n", ylab = "Voltage", xlab = "datetime")
  lines(x, y)
}


pane3 <- function() {
  plotcol <- c("black", "red", "blue")
  
  x <- data$Date
  
  plot(x, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = NA)
  
  lines(x, data$Sub_metering_1, col = plotcol[1])
  lines(x, data$Sub_metering_2, col = plotcol[2])
  lines(x, data$Sub_metering_3, col = plotcol[3])
  
  legend("topright", colnames(data)[6:8], col = plotcol, lwd = 1, bty = "n")
}


pane4 <- function() {
  x <- data$Date
  y <- data$Global_reactive_power
  
  plot(x, y, type = "n", ylab = "Global_reactive_power", xlab = "datetime")
  lines(x, y)
}



png(filename = "plot4.png", width = 504, height = 504, bg = NA, type = "cairo")

par(mfrow=c(2,2))

pane1()
pane2()
pane3()
pane4()

dev.off()
