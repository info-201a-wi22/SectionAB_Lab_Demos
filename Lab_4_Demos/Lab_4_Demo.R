## In this demo Your going to be working with the protests Data and answering 
## Questions asked about the dataset

##=--------Part 1 set up
##Question 1: Before you begin first load the stringr, dyply for know as a first step.
## These might come in handy later

library(stringr)
library(dplyr)



##Question 2: Next load the dataset from Assignment 1 from https://countlove.org/data/data.csv
# into a variable called `protests`

protests <- read.csv("https://countlove.org/data/data.csv", stringsAsFactors = FALSE)



##----- Part 2 Answering questions

##Question 3: which Location had the most Attendes by the most recent date. 
#Rember to filter out na Values `most_attendes`
most_attendes <-  protests%>%
  select(Date, Location, Attendees)%>%
  filter(Date == max(Date))%>%
  drop_na()%>%
  filter(Attendees == max(Attendees))%>%
  pull(Location)




##Question 4: What was the total number of attendes that attended the protests in Milwaukee, WI. For 
## Date 10/15/2019. `get_attendes_data`

get_attendes_data <- protests%>%
  select(Location, Date, Attendees)%>%
  drop_na()%>%
  filter(Date == "2019-10-15")%>%
  filter(Location == "Milwaukee, WI")%>%
  pull(Attendees)




## Challenge Question 5:

## How many total number of attendes were reported there were there in total for all protests.
## Rember this question is asking for all protests and the sum of all the Attendes that went to this protests 
## Average


get_number <- protests%>%
  group_by(Date)%>%
  select(Date, Location, Attendees)%>%
  drop_na()%>%
  summarize(Attendee = sum(Attendees, na.rm = T))%>%
  drop_na()%>%
  nrow()

##Question 6:
## What was the maxiumn number of attendes ever recored for 2017. Remeber 2017 is the lowest date 
## and 2021 is the maxiumn most recent date. Store this in a varible in_2017_protests

in_2017_protests <- protests%>%
  select(Date, Location, Attendees, Tags)%>%
  arrange(Date)%>%
  filter(Date == min(Date))%>%
  filter(Attendees == max(Attendees))%>%
  pull(Attendees)



## Challenge bonus: Write a function which takes in  a Tags(The type of protests) as a parameter. 
## And finds out how much Attendes attended that protests in total. When your function 
## Is called it should return the phrase "There were N attendees for the protests T"
## Where N is the total number of attendes calculated and  T is the Tag the parameter passed in. 

abdiwahids_calculations <- function(Tag){
  new_protests <- protests%>%
    filter(Tags == Tag)%>%
    summarize(Attendee = sum(Attendees, na.rm = T), .groups = "group")%>%
    pull(Attendee)
  paste0("There were", " ", new_protests, " ", "attendees", " ", "for the protest", " ", Tag, ".")
}

## Challenge bonus continued: Call your function above and pass it the 
## Tag "Civil Rights; For racial justice; Against punishment" to find out how  much Attendes 
## attended this protest

abdiwahids_second_call <- abdiwahids_calculations("Civil Rights; For racial justice; Against punishment")
  
