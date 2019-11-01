#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

hiNames <- read.csv("HI.TXT", header = TRUE)

# Define server logic required to render the desired names
shinyServer(function(input, output) {
    
    output$textPopularNames <- renderText(
            head(as.character(hiNames[ which(hiNames$Year==input$yearSlider & hiNames$Gender == input$genderRadioBtn), ]$Name), n=input$topN)
        )
 #  output$textPopularNames <- renderText(input$genderRadioBtn) #useful for debug
 #  output$textPopularNames <- renderText(input$yearSlider) #useful for debug
})
