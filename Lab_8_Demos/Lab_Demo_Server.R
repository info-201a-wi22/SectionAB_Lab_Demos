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
## source the Lab_Demo_ui.R
source("Lab_Demo_ui.R")

## load the plotly library
library(plotly)
## Load the starbucks dataset Data/StarbucksData.csv" into a varible called `starbucks`

starbucks <- read.csv("Data/StarbucksData.csv", stringsAsFactors = FALSE)

## The first set up you should do is set up a variable `Demo_server` and create a function
## by passing it an input and output. This would allow you to recieve input from users
## or other places and the output would server as what will be returned from the 
## server and shown to the user and be displayed in the ui. Its very important you 
## name the server Demo_server so it can be used later on in the app and it knows about.


##1. Inside the server do the following create an output to render a ggplot. Name this
## starbucks_output

## 2. Render a Plotly for your plot. By calling renderPlotly function()

## Plotly will make your graph interactive for the user as compared to simply doing Plot

## 3. Inside the renderPlotly Change the columns in the starbucks data to be the following
## "Food", "Calories", "Fat (g)", "Carb (g)", "Fiber (g)", "Protein (g)"


## 4. Store your plot in a starbucks `starbucks_plot`. 

## 5. Create a ggplot with the data being `starbucks` with a geom_line

## 6.  set the x axis to be the string `Calories` and the y axis to be the user input 
## this is based on the UI input$nutrition_type. Hint use double 
## brackets. Set the color of the plot to be the choice
## the user makes which is input$color_input


## 7. Call your starbucks data at the end.

##Optionally set labs for ggtitle


Demo_server <- function(input, output){
  output$starbucks_output <- renderPlotly({
    colnames(starbucks) <- c("Food", "Calories", "Fat (g)", "Carb (g)", "Fiber (g)", "Protein (g)")
    starbucks_plot <- ggplot(data = starbucks)+
      geom_line(mapping = aes(x = `Calories`, y = starbucks[[input$nutrition_type]]), 
                color = input$color_input)
    
    starbucks_plot
  })
}

##---Second solution show in todays demo

##Demo_server <- function(input, output){
##  output$starbucks_output <- renderPlotly({
  ##  colnames(starbucks) <- c("Food", "Calories", "Fat (g)", "Carb (g)", "Fiber (g)", "Protein (g)")
 ##   starbucks_plot <- ggplot(data = starbucks)+
  ##    geom_line(mapping = aes(x = `Calories`, y = .data[[input$nutrition_type]]), 
        ##        color = input$color_input)
    
  ##  return(starbucks_plot)
 ## })
##}
