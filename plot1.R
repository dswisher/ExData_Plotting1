source("loadData.R")

data <- loadData()

png(filename = "plot1.png", width = 504, height = 504, bg = NA)

with(data, hist(Global_active_power,
                col = "red",
                xlab = "Global Active Power (kilowatts)",
                main = "Global Active Power"))

dev.off()
