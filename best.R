best <- function(state, outcome, odata) {
  ## Return hospital name in that state with lowest 30-day death rate  
  colid <- 3
  if(outcome == "heart failure"){
    colid <- 4
  }
  if(outcome == "pneumonia"){
    colid <- 5
  }
  
  odata <- odata[odata$State == state,]
  odata <- odata[order(odata$Hospital.Name),]
  num <- as.numeric(odata[, colid])  
  temp <- is.na(num)
  num[temp] <- 1000
  minid <- which.min(num)  
  return((odata$Hospital.Name)[minid])
}