if(is.null(data)) {
  source("load_data.R")
}

png("plot2.png")
plot(subset$Time, subset$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
