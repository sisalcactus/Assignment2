# Assignment 2: Narcissistic Numbers


value <- readline(prompt = "Please enter a three-digit positive number: ")
# this is added so we can prompt the user to enter the requested number, with "value" assigned for easy reference

if(is.numeric(as.numeric(value)) &     # this is added so we can check if the inputted number is numeric
   
  (as.numeric(value)) %% 1 == 0 &      # this is added so we can check if the inputted number is an integer
   
  nchar(as.character(value)) == 3 &    # this is added so we can check if the inputted number has exactly three digits
   
  (as.numeric(value)) >= 0){           # this is added so we can check if the inputted number is a positive number
 
     value <- as.integer(value)        # this is added so we can have the type of the inputted text as an integer
  
     third_digit <- value %% 10        # the third (rightmost) digit is simply the remainder when the inputted number is divided by 10 (e.g., when 122 is divided by 10, the remainder is 2, coinciding with the rightmost digit)
  
     first_digit <- floor(value/100)
  
     second_digit <- (value - third_digit - first_digit*100)/10
  
  if(value == ((first_digit)^3 + (second_digit)^3 + (third_digit)^3)){
    
    print(paste(value, "is a three-digit positive number and a narcissistic number."))
    
  } else { 
    
    print(paste(value, "is a three-digit positive number but not a narcissitic number."))
    
  }
  
} else {
  print("Entry is not valid. Please ensure your input is a three-digit positive integer. Terminating...")
} # this if-else prints the error message when the user's entry is not numeric; the error message is also printed when it is not a positive three-digit integer