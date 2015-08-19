library(UsingR)

childHeight <- function(father_ht) {
  
  x <- galton$parent
  y <- galton$child
  
  mean(y) + (cov(x,y)/var(x))*(father_ht - mean(x))

}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$father_ht})
    
    output$prediction <- renderPrint({childHeight(input$father_ht)})
  }
)