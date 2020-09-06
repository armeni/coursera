rankall <- function(outcome, num = "best") {
  data <- data.table::fread('outcome-of-care-measures.csv')
  outcome <- tolower(outcome)
  
  if (!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
    stop('invalid outcome')
  }
  
  setnames(data,
           tolower(sapply(colnames(data), gsub, pattern = "^Hospital 30-Day Death \\(Mortality\\) Rates from ", replacement = "" ))
  )
  
  col_indices <- grep(paste0("hospital name|state|^", outcome), colnames(data))
  data <- data[, .SD, .SDcols = col_indices]
  
  data[, outcome] <- data[,  as.numeric(get(outcome))]
  
  if (num == "best"){
    return(data[order(state, get(outcome), `hospital name`),
                  .(hospital = head(`hospital name`, 1)),
                  by = state])
  }
  
  if (num == "worst"){
    return(data[order(get(outcome), `hospital name`),
                  .(hospital = tail(`hospital name`, 1)),
                  by = state])
  }
  
  data[order(state, get(outcome), `hospital name`), head(.SD, num),
             by = state, .SDcols = c("hospital name")]
}
