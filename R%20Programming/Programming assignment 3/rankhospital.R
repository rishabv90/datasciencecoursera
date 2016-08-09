##Programming assignment 3
##Rishab Verma
##9th August 2016


rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Check that state and outcome are valid
  valid_outcome = c("heart attack", "heart failure", "pneumonia")
  valid_state = data[,7]
  ##error checks 
  ##1)
  if((state %in% valid_state)== TRUE){
    #print("VALID STATE broo")
  }else{
    
    stop(print("INVALID STATE dude"))
  }

  ##2)
  if((outcome %in% valid_outcome)== TRUE){
    #print("VALID OUTCOME broo")
    
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
  ##omit na values
  sub_data <- subset(data, State == state & data[,valCol] != "Not Available")
  
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  
  #rank = 0 ## used for num argument.
  last = length(sub_data[,valCol])
  num_hos = nrow(sub_data)
  
  
  if(num == "best"){
        print("best")
        rank = 1
  }else if(num == "worst"){
      print("worst")
      rank = num_hos
  }else if(as.numeric(num) > nrow(sub_data)){
      print("Num > number of hospitals")
      return(NA)
  }
  else  {
      print("Good Range")
      rank = as.numeric(num)
  }
  
  num_hos = sort(as.numeric(sub_data[, valCol]))
  name_hos = subset(sub_data, as.numeric(sub_data[, valCol]) == num_hos[rank])
  
  print(name_hos[1,2])
}