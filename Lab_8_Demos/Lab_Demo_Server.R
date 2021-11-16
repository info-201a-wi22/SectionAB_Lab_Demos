## This is the server file where 
## you will respond to user events and changes do something based on input
## and what will be produced and running everytime and responding to changes. etc..

## first start by setting up the libraries which you might need for plots or handling events
## Load the dplyr library
library(dplyr)

## Load the shiny library
library(shiny)

## load the ggplot2 library


library(ggplot2)
## load the maps library
library(maps)

##load the mapproj library
library(mapproj)


## The first set up you should do is set up a variable `Demo_server` and create a function
## by passing it an input and output. This would allow you to recieve input from users
## or other places and the output would server as what will be returned from the 
## server and shown to the user and be displayed in the ui. Its very important you 
## name the server Demo_server so it can be used later on in the app and it knows about.



## Next week will fix this so we can be able to change allow users to modify the graphs based
## the inputs they select
Demo_server <- function(input, output){
  
}
