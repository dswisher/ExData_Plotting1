loadData <- function() {
  
  # We only want to work with a small subset of the data, so only read in
  # the bit we actually want. This is MUCH faster than reading the whole
  # thing and subsetting.
  first <- 66638
  last <- 69517
  
  nrows <- (last - first) + 1
  skip <- first - 1
  
  raw <- read.csv("household_power_consumption.txt",
                  header = FALSE,
                  nrows = nrows, skip = skip,
                  col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                  sep = ";", na.strings = "?", stringsAsFactors = FALSE)

  # Clean up the data a bit by converting separate date/time strings to one POSIXct column
  raw[,10] = as.POSIXct(paste(raw[,1], raw[,2]), format="%d/%m/%Y %H:%M:%S")

  colnames(raw)[10] = "Date"

  # Pick out the columns we want  
  data <- raw[,c(10,3:9)]

  # Return the data
  data
}