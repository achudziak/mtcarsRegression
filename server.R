
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  model1 <- lm(qsec ~ hp + wt, data = mtcars)

  output$qsecEst <- renderText(
    predict(model1, newdata = data.frame(hp = input$horsePower, wt = input$weight))
  )
    
  

})
