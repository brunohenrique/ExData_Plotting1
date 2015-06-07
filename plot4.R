if(is.null(data)) {
  source("load_data.R")
}

png("plot4.png")

par(mfrow=c(2, 2))

# Graph 1
hist(as.numeric(subset$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Graph 2
plot(subset$Time, subset$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Graph 3
plot(subset$Time, subset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subset$Time, subset$Sub_metering_2, col="red")
lines(subset$Time, subset$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n")

# Graph 4
plot(subset$Time, subset$Global_reactive_power, type="l", ylab="Global_active_power", xlab="datetime")
dev.off()
