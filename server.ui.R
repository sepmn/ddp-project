library(shiny)

shinyServer(function(input, output) {
  observeEvent(input$calculate, {
    weight <- as.numeric(input$weight)
    height <- as.numeric(input$height) / 100  # Convert height to meters
    bmi <- weight / (height^2)
    output$bmi_result <- renderText({
      paste("Your BMI is:", round(bmi, 2))
    })
  })
})

