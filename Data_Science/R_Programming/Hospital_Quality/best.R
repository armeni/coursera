best <- function(state, outcome) {
  data <- data.table::fread('outcome-of-care-measures.csv')
  outcome <- tolower(outcome)
  chosen_state <- state 
  
  if (!chosen_state %in% unique(data[["State"]])) {
    stop('invalid state')
  }
  
  if (!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
    stop('invalid outcome')
  }
  
  setnames(data,
           tolower(sapply(colnames(data), gsub, pattern = "^Hospital 30-Day Death \\(Mortality\\) Rates from ", replacement = "" ))
  )
  
  data <- data[state == chosen_state]
  col_indices <- grep(paste0("hospital name|state|^", outcome), colnames(data))
  
  data <- data[, .SD, .SDcols = col_indices]
  data[, outcome] <- data[,  as.numeric(get(outcome))]
  data <- data[complete.cases(data), ]
  data <- data[order(get(outcome), `hospital name`)]
  
  data[, "hospital name"][1]
}

