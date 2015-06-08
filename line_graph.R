source("load_data.R")

lineGraph <- function(data = NULL, xVar, yVar, xLab, yLab = "") {
  if(is.null(data)) {
    data <- extract_subset()
  }

  plot(data[[xVar]],
       data[[yVar]],
       type="l",
       ylab=yLab,
       xlab=xLab)
}
