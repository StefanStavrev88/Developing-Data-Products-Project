library(shiny)
source("best.R")

data <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
data <- data[ ,c(2,7,11,17,23)]

shinyServer(
  function(input, output) {

    output$outputText <- renderText({
      suppressWarnings(best(input$select1, input$select2, data))
    })
    
    output$docText <- renderText({
      paste0("This application finds the best hospital in a chosen American ",
        "State, for a chosen outcome.\n\nHow to use this application:\n\n  1) ",
        "Choose state\n  2) Choose outcome\n  3) Press Go\n\nThe data was ",
        "downloaded from:\n\n",
        "  https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2FProgAssignment3-data.zip")
    })
    
  }  
)