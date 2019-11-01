#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that shows the popular baby names 
shinyUI(fluidPage(

    # Application title
    titlePanel("Most Popular Baby Names Across Time in Hawaii"),

    # Input items to get from the user
    sidebarLayout(
        sidebarPanel(
            h4 ("Use the controls below to find the most popular baby names in Hawaii for the demographic specified."),
            numericInput("topN", "Number of Top Names to Show:", 10, min=1, max= 1000),
            radioButtons("genderRadioBtn", "Gender:",  c("Male" = "M", "Female" = "F")),
            sliderInput("yearSlider",
                        "Pick a Year:",
                        min = 1910,
                        max = 2018,
                        value = 2000,
                        sep="")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3 ("Top Names:"),
            textOutput("textPopularNames")
        )
    )
))
