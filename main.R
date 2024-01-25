data <- read.table("path-to-csv-file.csv", header = FALSE, sep = ",")

if (all(is.numeric(data$V1)) && all(is.numeric(data$V2)) &&
  !any(is.na(data$V1)) && !any(is.na(podaci$V2))) {

  png("path-to-image-png",
      width = 1920, height = 1080, units = "px", pointsize = 20, bg = "#E9F6FF")

  plot(data$V1, data$V2, type = "p", col = "#C21292", pch = 21, cex = 1.5, lwd = 2,
       xlab = "x-axis", ylab = "y-axis", main = "Title")

  axis(1, at = seq(min(data$V1), max(data$V1), by = 5),
       labels = seq(min(data$V1), max(data$V1), by = 5))
  axis(2)

  grid()
  
  lines(data$V1, data$V2, col = "#3652AD", cex = 2, lwd = 2)
  
  dev.off()

} else {
  cat("Check your .csv file!")
}
