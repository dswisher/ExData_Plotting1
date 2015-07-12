source("loadData.R")

png(filename = "plot1.png", width = 504, height = 504, bg = NA)

data <- loadData()

with(data, hist(Global_active_power,
                col = "red",
                xlab = "Global Active Power (kilowatts)",
                main = "Global Active Power"))

dev.off()
