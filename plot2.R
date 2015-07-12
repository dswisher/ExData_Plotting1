source("loadData.R")

plot2 <- function() {
  data <- loadData()
  
  x <- data$Date
  y <- data$Global_active_power
  
  plot(x, y, type = "n", ylab = "Global Active Power (kilowatts)", xlab = NA)
  lines(x, y)
}

plot2Png <- function() {
  png(filename = "plot2.png", width = 504, height = 504, bg = NA)
  
  plot2()
  
  dev.off()
}

# plot2Png()
