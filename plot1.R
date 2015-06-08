source("load_data.R")

graph1 <- function(data = NULL) {
  if(is.null(data)) {
    data <- extract_subset()
  }

  hist(as.numeric(data$Global_active_power),
       col="red",
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
}

png("plot1.png")
graph1()
dev.off()
