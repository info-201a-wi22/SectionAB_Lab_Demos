
# For each question/prompt, write the necessary code to calculate the answer.
# For grading, it's important that you store your answers in the variable names
# listed with each question in `backtics`.
# For each prompt marked `Reflection`, please write a response
# in your `README.md` file.





# Question 1. # Load the `stringr` package, which you'll use later.
install.packages("stringr") ##<-- if you have not installed the package 
library("stringr")


# Question 2: Load the data from Starbucks Data 
# into a variable called `starbucks` rember to store strings AS factors as a false

## load the data 

## into a variable called starbucks 

## string as facotrs read them as false

starbucks <- read.csv("Data/StarbucksData.csv", stringsAsFactors = FALSE)



## Question 3: How much  rows are in  the dataset 'num_starbucks'
num_starbucks <- nrow(starbucks)









## Question 4: Extract the `Calories` column into a variable called `num_calories`

num_calories <- (starbucks$Calories)


## second way to do it 
second_way <- as.data.frame(starbucks[["Calories"]])




## Question 5: What is the mean number of Calories? `mean_calories` 
##(hint for this and other calculations: you'll need to consider missing values)

mean_calories <- mean(num_calories, na.rm = T)





# Reflection 1: View your data and Create an unordered list of what you like about the starbucks datatset.
## And found intersting











## Question 6: Write a function which would return Any name when passed into one value 
## like a first and last name. Your functiuon will be passed a 
#first and last name. So if passed for example James Hopkins the function should return 
## JamesHopkins NO SPACES as one word. Store this in a varible `no_spaces`
no_spaces <- function(first_name,last_name){
  return(paste0(first_name, last_name))
}



## Question 7: call your function above and pass it the first_name as Mo and the last name as hamed store this in a
## variable store this in a variable student_name . The student_name should contain the name "Mohamed"

student_name <- no_spaces("Mo", "hamed")




##Question 8: Write a function which would return a persons first name and last name plus the 
## sentence Is the weiredest name I seen sperated by a _ with spaces to show it.
## Your function would be passed a first_name and last_name. So for example if your passed a first name Jay 
## Jones your function should return Jay_Jones_Is  the weirdest name I heard Where Jay is the first name
## and jones is the last name
## store this in a variable with_underscores.









## Reflection 2: #Type a pargraph with at least a bold explaining why you find the datatset intersting



my_name = "abdiwahid"





##Question 9:
##Call your function with_dashes. and pass it the arguments "Cookies" as the first name 
## and "Table" as the second argument
## store this in a variable yea_dashes






## Question 10: Create a vector of some of the things you might find in a store. 'find_in_store`


find_in_store <- c("Cookies", "Creams", "Low-fives")



## Question 11: Write a program which would replace all the strings in find_in_store vector with just no
## No. 'no_vector` SO for example when you run your no vector it should return the value only no


abdiwahid <- function(f_name, l_name){
  if(f_name > 1){
    return(paste("I am greater than 1"))
  }else{
    return(print("Im less than 1"))
  }
}







