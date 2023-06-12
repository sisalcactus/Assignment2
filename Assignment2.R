# Assignment 2: Narcissistic Numbers

value <- readline(prompt = "Please enter a three-digit positive number: ")
# this is added so we can prompt the user to enter the requested number, with "value" assigned for easy reference

if(is.numeric(as.numeric(value)) &     # this is added so we can check if the inputted number is numeric
   
  (as.numeric(value)) %% 1 == 0 &      # this is added so we can check if the inputted number is an integer
   
  nchar(as.character(value)) == 3 &    # this is added so we can check if the inputted number has exactly three digits
   
  (as.numeric(value)) > 0){           # this is added so we can check if the inputted number is a positive number
 
     value <- as.integer(value)        # this is added so we can have the type of the inputted text as integer
  
# next, three new variables were defined as we need to isolate each digit from the inputted number
     
     third_digit <- value %% 10        # the third (rightmost) digit of the inputted number is simply the remainder when the user's inputted number is divided by 10 
                                       # e.g., when 198 is divided by 10, the remainder is 8, coinciding with the rightmost digit
     
     first_digit <- floor(value/100)   # the first digit can be isolated by first dividing it by 100   
                                       # (so the user's inputted number now has the first digit in the "ones" place, not the "hundreds" place)
                                       # then we can use the floor() function which basically just rounds it to the lowest integer.
                                       # e.g., if the inputted text is 198, then we get floor(198/100)
                                       # which is floor(1.98), which comes out to 1
     
     second_digit <- (value - third_digit - first_digit*100)/10  # the middle digit can be isolated by removing from the user's inputted number the following:
                                                                 # a) the third digit (ones place), which we already isolated,
                                                                 # and b) the product of the first digit and 100 (so the first digit is back in the hundreds place), which we also already isolated;
                                                                 # this leaves us with just the digit in the tens place and a zero in the ones place
                                                                 # dividing this number by 10 isolates the middle digit
                                                                 # e.g., if the inputted text is 198, we'd remove 8 (third digit) and 100 (first digit times 100), leaving 90
                                                                 # then dividing it by 10 yields 9 (second digit)
     
  
     if(value == ((first_digit)^3 + (second_digit)^3 + (third_digit)^3)){                 # in the condition, R compares if the user's inputted number matches the sum of the cubes of its digits
    
     print(paste(value, "is a three-digit positive number and a narcissistic number!"))   # this is added to inform the user their number is a narcissistic number
    
     } else {                                                                           
    
    print(paste(value, "is a three-digit positive number but not a narcissistic number.")) # this is added to inform the user their number is not a narcissistic number
    
     }                                          # this inner if-else relates to the case where the user's inputted number has been verified as being numeric
                                                # (and is a positive three-digit number)
                                                # so the aim it achieves is inform the user if their number is narcissistic or not narcissistic (based on the calculation in line 33)

     } else {                                                                           
  
       print("Entry is not valid. Please ensure your input is a three-digit positive integer. Terminating...")

}                # this outer if-else is to check if the user's entry is numerical
                 # here, if-else prints the error message when the user's entry is not numeric
                 # the error message is also printed when it is not a positive three-digit integer (done just for fun!)


