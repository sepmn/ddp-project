library(shiny)

shinyUI(fluidPage(
  titlePanel("BMI Calculator"),
  sidebarLayout(
    sidebarPanel(
      textInput("weight", "Enter your weight (kg):", ""),
      textInput("height", "Enter your height (cm):", ""),
      actionButton("calculate", "Calculate BMI")
    ),
    mainPanel(
      h4("Your BMI:"),
      verbatimTextOutput("bmi_result")
    )
  )
))

