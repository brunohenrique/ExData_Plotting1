if(is.null(data)) {
  source("load_data.R")
}

png("plot1.png")
hist(as.numeric(subset$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
