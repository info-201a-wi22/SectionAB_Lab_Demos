# Question 1. # Load the `stringr` package, which you'll use later.
library(stringr)



# Question 2: Load the data from Starbucks Data 
# into a variable called `starbucks` rember to store strings AS factors as a false

starbucks <- read.csv("Data/StarbucksData.csv", stringsAsFactors = FALSE)




## Question 3: How much  rows are in  the dataset 'num_starbucks'

num_starbucks <- nrow(starbucks)



## Question 4: Extract the `Calories` column into a variable called `num_calories` 

num_calories <- starbucks$Calories





## Question 5: View your num_calories if you done it correctly above you should only 
## see the calories column extracted. You should first turn it into a dataframe to view it as nice
## organized table. 

View(as.data.frame(num_calories))



## Question 6: What is the mean number of Calories? `mean_calories` 
##(hint for this and other calculations: you'll need to consider missing values)

mean_calories <- mean(starbucks, na.rm = T)






## Question 7: Write a function `has_more_As` to determine which of two strings contains
# more instances of the letter "a". It should take as parameters two string
# variables, and return the argument which has more occurances of the letter "a"
# If neither phrase contains the letter "a", it should return:
# "Neither string contains the letter a."
# If the phrases contain the same number of "a"s, it should return:
# "The strings have the same number of as."
# The function must work for both capital and lowercase "a"s.

has_more_As <- function(String_A, String_B){
  turnA_ToLower <- str_to_lower(String_A)
  turnB_ToLower <- str_to_lower(String_B)
  
  getA_Occurences <- str_count(turnA_ToLower, "a")
  getB_Occurences <- str_count(turnB_ToLower, "a")
  if(getA_Occurences > getB_Occurences ){
    return(paste("The String:", String_A, "contains more A's", "than the String:", String_B))
  }else if(getA_Occurences < getB_Occurences){
    return(paste("The String:", String_B, "contains more A's", "than the String:", String_A))
  }else if(getA_Occurences == getB_Occurences){
    return(paste("Both Strings contain the same number of A's"))
  }else{
    return(paste("Neither String has a letter A"))
  }
}



## Question 8: Call your function above and test it by passing it different strings log these out in the terminal

test1 <- has_more_As("All", "All") #<----(Returned Both Strings contain the same number of A's)

test2 <- has_more_As("ababababababababababab", "llllllllll") # <---(Returned that string A has more a's than sring b)

test3 <- has_more_As("NOOOOOOOOO", "NOOOOOOOO") #<---("Returned that none of the strings as A's)


## Question 8: Create a vector of the number of fats which are greater than 10.0 in the starbucks dataset
## `Too_Much_Fat` The Too_Much_Fat should store the number of fats total which are greater than 10.0

extract <- starbucks$Fat..g.

getResult <- extract[extract > 10]

Too_Much_Fat <- nrow(as.data.frame(getResult, na.rm = T))