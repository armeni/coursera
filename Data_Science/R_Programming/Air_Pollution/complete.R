complete <- function(directory, id = 1:332) {
  data <- list.files(directory, full.names = TRUE)
  res <- data.frame()
  
  for (i in id) {
    df <- read.csv(data[i])
    n <- sum(complete.cases(df))
    tmp <- data.frame(i, n)
    res <- rbind(res, tmp)
  }
  
  colnames(res) <- c("id", "nobs")
  res
}
