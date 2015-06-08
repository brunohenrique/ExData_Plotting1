source("line_graph.R")

png("plot2.png")
lineGraph(yVar="Global_active_power",
          xVar="Time",
          xLab="",
          yLab="Global Active Power (kilowatts)")
dev.off()
