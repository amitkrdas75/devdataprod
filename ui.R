
library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Child Height Prediction"),
    sidebarPanel(
      numericInput('father_ht', 'Height of Parent (in cm)', 20, min = 20, max = 180, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Prediction'),
      h4('Height of parent entered (cm.): '),
      verbatimTextOutput("inputValue"),
      h4('Predicted height of son (cm.): '),
      verbatimTextOutput("prediction")
    )
  )
)