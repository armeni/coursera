pollutantmean <- function(directory, pollutant, id = 1:332) {
  data <- list.files(directory, full.names = TRUE) 
  res <- data.frame()
  
  for (i in id) {
    res <- rbind(res, read.csv(data[i]))
  }
  
  mean(res[, pollutant], na.rm = TRUE)
}
