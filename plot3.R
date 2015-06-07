if(is.null(data)) {
  source("load_data.R")
}

png("plot3.png")
plot(subset$Time, subset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subset$Time, subset$Sub_metering_2, col="red")
lines(subset$Time, subset$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()
