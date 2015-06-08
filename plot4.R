source("load_data.R")
source("line_graph.R")
source("plot1.R")
source("plot3.R")

userfulData <- extract_subset()

png("plot4.png")

par(mfrow=c(2, 2))

# Graph 1
graph1(userfulData)

# Graph 2
lineGraph(userfulData,
          yVar="Voltage",
          xVar="Time",
          xLab="datetime",
          yLab="Voltage")

# Graph 3
graph3(userfulData, "n")

# Graph 4
lineGraph(userfulData,
          yVar="Global_reactive_power",
          xVar="Time",
          xLab="datetime",
          yLab="Global_reactive_power")

dev.off()
