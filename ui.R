
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Quarter mile time prediction"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h3("choose values"),
      numericInput("horsePower", "horse power", 125, min = 40, max = 350, step = 5),
      numericInput("weight", "weight", 3.3, min = 1.4, max = 5.5, step = 0.1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel("prediction",
                  h3("predicted time for 1/4 mile"),
                  verbatimTextOutput("qsecEst")
        ),
        tabPanel("Documentation",
                 p("The application computes prgnosed time for a car for 1/4 mile based on given 
                   horsepower and weight. We use a simple linear regression model based on built-in R mtcars dataset."),
                 p("Choose weight and horsepower to obtain prediction.")
                )
      )
    )
  )
))
