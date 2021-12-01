## This is the ui page also known as the userinterface its what the user will 
## be able to see and interact with. Its also where are your front end components will go
## such as pargraphs and widgets. So you should spend some time customzing this as this 
## main component of the webpage


## Set up
## Load the Shiny library
library(shiny)


## Load the ggplot2 incase
library(ggplot2)

##Load the maps library
library(maps)

##load the plotly library
library(plotly)

## To first begin a custom webpage define a variable first_page. That will represent 
##the first page for your shiny web page. 

## You should start by creating the tab panel which be used to render the 
## first page. Inside the tabPanel do the following

## Call the h4()  function to create a header and for the record. Inside the function 
## pass it the string "FirstPage" This should show up when the app is run  first page to
## be able to navaigate to it  more easier. 


## 2.should call the p() function to be able to type pargrapghs. Type in some texts
## to be displayed for your webpage

## 3. Display an image on the first page by calling the img() function.
## The source to the image is at "https://creative.starbucks.com/images/logos/logo-1987.png"

first_page <- tabPanel(
  h4("FirstPage"),
  p("My very first webpage I am coding"),
  p("I am publishing and writing my very first web page HORRAY!!!! YEYEYEYEYEY!!!"),
  img(src = "https://creative.starbucks.com/images/logos/logo-1987.png")
)


## Define a second variable called `second_page` that will represnt the second page for 
## App. 

## Inside the second page call the tabPanel and 
##inside the tab panel title the header second page calling h4() function


## after the h4 call the wrap the contents of everything inside 
## a sidebarLayout, sideBarPanel and mainPanel in this order. 

##Inside the sidebarPanel do the following. 
##1.Create a selectInput which would allow a 
##user to be able to select inputs of nutrition Types 
## to be able to modify a plot later on.

## 2. Give the select input an id of `nutrition_type`
## so the server is able to know about this and work with it. later on.
##Give the starbucks a label of Starbucks Nutrition Types so the user is able to know 
## what this is. When selecting a type. 


##3. Give the choices a vector of choices for the drop down menu.
## Fat (g)", "Carb (g)",
##"Fiber (g)", ("Protein (g)". You should not be able to see a drop down menu

## Do the same thing a select input but this time define it as a color input. With 
## an id of color_input. And choices of a few colors.

## Finally inside the mainPanel. Display your chart. DO this by first 
## giving a h3() title of Starbucks plot and then calling plotlyOutput() function to make 
## and interactive plot be displayed to the webpage
## passin and outputId  set to starbucks_output 

##NOTE: ITS VERY IMPORTANT TO GIVE YOUR IDS SPECIFIC AND NAMES FOR THE SERVER TO 
## RUN WITH IT

##When your run your app in the second page you should be 
#3 able to view and see drop downs for colors and different starbucks features``

second_page <- tabPanel(
  h4("SecondPage"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "nutrition_type",
        label = "Starbucks Nutrition Types" ,
        choices = c("Fat (g)", "Carb (g)","Fiber (g)", ("Protein (g)"))
        ),
      selectInput(
        inputId = "color_input",
        label = "Choose a color for the graph" ,
        choices = c("Red", "Blue", "Orange", "Green", "Black", "White", "Purple", "Brown")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "starbucks_output")
    )
  )
)

## Optionanly create a third page of your choice with any content to test your 
## Webpage and to be able to see if you can add more pages. Dont forget
## to render this in your ui so your page gets rendered on the webpage

third_page <- tabPanel(
  h4("Third_Page"),
  p("This is the third page test")
  
  )



## In this step define a varible `Demo_ui` which would render your webpages 
## make sure to call navbarPage which would serve as the nav for your pages.
## give it tags$title("Shiny") to give your webpage a title
## then call your first_page and second_page. You should know 
## be able to see your webpages rendered in the App when you run it


Demo_ui <- navbarPage(
  tags$title("Shiny"),
  first_page,
  second_page
)
