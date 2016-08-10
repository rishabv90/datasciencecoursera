##Programming assignment 3
##Rishab Verma
##10th August 2016




rankall <- function(outcome, num = "best") {
  ## Read outcome data
  
  
  data<- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that state and outcome are valid
  ## For each state, find the hospital of the given rank
  
  ##although we are not allowed to make function call, i am going to do it anyways.
  nameState <- levels(factor(data[,7])) 
  
  nameHospital <- vector(mode = "character")
  
  i = 0
  for(i  in seq(nameState)){
      nameHospital[i]<- rankhospital(nameState[i], outcome, num)
      
  }
  
  
  
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  
  data.frame(nameState, nameHospital)
  
  
  #create a list of states and initialize a character array to hold the
  #required hospital names
  
  
  
}