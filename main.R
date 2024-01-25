podaci <- read.table("path-to-csv-file.csv", header = FALSE, sep = ",")

if (all(is.numeric(podaci$V1)) && all(is.numeric(podaci$V2)) &&
  !any(is.na(podaci$V1)) && !any(is.na(podaci$V2))) {

  png("path-to-image.png",
      width = 1920, height = 1080, units = "px", pointsize = 20, bg = "#E9F6FF")

  plot(podaci$V1, podaci$V2, type = "p", col = "#C21292", pch = 21, cex = 1.5, lwd = 2,
       xlab = "x-axis", ylab = "y-axis", main = "Title")

  axis(1, at = seq(min(podaci$V1), max(podaci$V1), by = 5),
       labels = seq(min(podaci$V1), max(podaci$V1), by = 5))
  axis(2)

  grid()

  lines(podaci$V1, podaci$V2, col = "#3652AD", cex = 2, lwd = 2)


  dev.off()

} else {
  cat("Provjerite .csv datoteku!")
}
