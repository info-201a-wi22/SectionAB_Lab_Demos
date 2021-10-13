
# For each question/prompt, write the necessary code to calculate the answer.
# For grading, it's important that you store your answers in the variable names
# listed with each question in `backtics`.
# For each prompt marked `Reflection`, please write a response
# in your `README.md` file.





# Question 1. # Load the `stringr` package, which you'll use later.

install.packages("stringr") ##<-- if you have not installed the package 
library("stringr")     ## <--- You always need to load the libraries 


# Question 2: Load the data from Starbucks Data 
# into a variable called `starbucks` rember to store strings AS factors as a false


## Read.csv is how you will read and load in Data. It is a function which allows you to
## csv files as code. String As factors setting it to false means that I dont want strings in the data
## to be read factors


starbucks <- read.csv("Data/StarbucksData.csv", stringsAsFactors = FALSE)



## Question 3: How much  rows are in  the dataset 'num_starbucks'


## nrow function returns the number of rows 
num_starbucks <- nrow(starbucks)









## Question 4: Extract the `Calories` column into a variable called `num_calories`


## Solution 1 which is to use a $ sign 
num_calories <- (starbucks$Calories)   ## <---- this returns a vector

## to view data 
View(as.data.frame(num_calories))


## Solution 2 is to extract it as acesing an index of the array in this case the starbucks
second_way <- as.data.frame(starbucks[["Calories"]])  ## <---- this returns a vector




## Question 5: What is the mean number of Calories? `mean_calories` 
##(hint for this and other calculations: you'll need to consider missing values)

mean_calories <- mean(num_calories, na.rm = T)





# Reflection 1: View your data and Create an unordered list of what you like about the starbucks datatset.
## And found intersting


View(starbucks)








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


with_underscores <- function(f_name, lName){
  return(paste(f_name, lName, sep = "_", 'Is the weirdest name I heard'))
}









## Reflection 2: #Type a pargraph with at least a bold explaining why you find the datatset intersting









##Question 9:
##Call your function with_dashes. and pass it the arguments "Cookies" as the first name 
## and "Table" as the second argument
## store this in a variable yea_dashes

yea_dashes <- with_underscores("Cookies", "Table")






## Question 10: Create a vector of some of the things you might find in a store. 'find_in_store`


find_in_store <- c("Cookies", "Creams", "Low-fives")



## Question 11: Write a program which would replace all the strings in find_in_store vector with just no
## No. 'no_vector` SO for example when you run your no vector it should return the value only no a one element vector.
## user: notice - You may get a warning in the console hint this is expected.

no_vector <- gsub(find_in_store, "", "no")







