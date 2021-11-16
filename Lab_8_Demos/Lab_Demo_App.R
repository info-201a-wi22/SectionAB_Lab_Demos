## This is app where your shiny app is going to be created and where evrything will be run
##Through so set up  your working directory and set this up. Everytime you want to run your app
## Maked sure to run this page


## Set up
## Load the Shiny library
library(shiny)

## Load the ggplot2 incase
library(ggplot2)

##Load the maps library

library(maps)
## Source the Lab_Demo_Server.R and the Lab_Demo_ui.R. So your app is able
## run propely and run everything and produce your webpage

source("Lab_Demo_Server.R")
source("Lab_Demo_ui.R")

## Call the shinyApp function and pass it the arguments 

## ui set to the name of the ui for refrence you shouldve called this Demo_ui in the 
## Lab_Demo_ui.R page

## and second paramter server for refrence you shouldve called this Demo_server in the 
## Lab_Demo_Server.R page.

## Once you save this file you should not be able to see a Run App option rather than 
## ran this where you would know be able to run your app

shinyApp(ui = Demo_ui, server = Demo_server)