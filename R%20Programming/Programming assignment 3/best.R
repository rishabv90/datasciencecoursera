##Programming assignment 3
##Rishab Verma
##8th August 2016


best <- function(state, outcome) {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Check that state and outcome are valid
  valid_outcome = c("heart attack", "heart failure", "pneumonia")
  valid_state = data[,7]
  val_col = 0 ##initial declaration
  low_hos = 0
  
  ##error checks 
  ##1)
  if((state %in% valid_state)== TRUE){
      print("VALID STATE broo")
  }else{
    
      stop(print("INVALID STATE dude"))
  }
  
  ##2)
  if((outcome %in% valid_outcome)== TRUE){
      print("VALID OUTCOME broo")
    
      if(outcome == "heart attack"){
          valCol = 11
          print(valCol)
      }
      if(outcome == "heart failure"){
          valCol = 17
      }
      if(outcome == "pneumonia"){
          valCol = 23
      }
    
    
    
  }else{
    
    stop(print("INVALID OUTCOME dude"))
  }
  
  ##make subsets
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  
  sub_data <- subset(data, State == state & data[, valCol] != "Not Available")
  
  lowest <- min(as.numeric(sub_data[,valCol]))
  low_hos <- subset(sub_data, as.numeric(sub_data[,valCol]) == lowest)
  
  return(low_hos[,2])
  
  
  
}