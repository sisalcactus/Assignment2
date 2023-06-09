# 

value <- readline(prompt = "Please enter a three-digit positive number: ")

if(is.numeric(as.numeric(value)) & 
   (as.numeric(value)) %% 1 == 0 &
   (as.numeric(value)) >= 0 &
   nchar(as.character(value)) == 3){
  value <- as.integer(value)
  
  third_digit <- value %% 10
  
  first_digit <- floor(value/100)
  
  second_digit <- (value - third_digit - first_digit*100)/10
  
  if(value == ((first_digit)^3 + (second_digit)^3 + (third_digit)^3)){
    
    print(paste(value, "is a narcissistic number."))
    
  } else {
    
    print(paste(value, "is not a narcissitic number."))
    
  }
  
} else {
  print("Entry is not valid. Please ensure your input is a three-digit positive integer. Terminating...")
}