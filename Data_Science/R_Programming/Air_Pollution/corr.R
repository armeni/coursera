corr <- function(directory, threshold = 0) {
  data <- list.files(directory, full.names = TRUE)
  res <- vector(mode = "numeric", length = 0)
  
  for (i in 1:length(data)) {
    df <- read.csv(data[i])
    sum <- sum((!is.na(df$sulfate)) & (!is.na(df$nitrate)))
    if (sum > threshold) {
      tmp <- df[which(!is.na(df$sulfate)), ]
      dft <- tmp[which(!is.na(tmp$nitrate)), ]
      res <- c(res, cor(dft$sulfate, dft$nitrate))
    }
  }
  
  res
}
