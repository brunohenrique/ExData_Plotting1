if(!file.exists("eletric.zip")) {
  data_url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(data_url, method="curl", destfile="eletric.zip")
  unzip("eletric.zip")
}
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na="?")

data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

cases <- data$Date == "2007-02-01" | data$Date == "2007-02-02"
subset <- data[cases, ]
