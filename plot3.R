source("load_data.R")

graph3 <- function(data = NULL, legendBorder="") {
  if(is.null(data)) {
    data <- extract_subset()
  }

  plot(userfulData$Time,
       userfulData$Sub_metering_1,
       type="l",
       xlab="",
       ylab="Energy sub metering")

  lines(userfulData$Time,
        userfulData$Sub_metering_2,
        col="red")

  lines(userfulData$Time,
        userfulData$Sub_metering_3,
        col="blue")

  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         bty=legendBorder)

}

png("plot3.png")
graph3()
dev.off()
