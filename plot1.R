source("loadData.R")

plot1 <- function() {
  data <- loadData()
  
  with(data, hist(Global_active_power,
                  col = "red",
                  xlab = "Global Active Power (kilowatts)",
                  main = "Global Active Power"))
}

plot1Png <- function() {
  png(filename = "plot1.png", width = 504, height = 504, bg = NA)
  
  plot1()
  
  dev.off()
}

plot1Png()
