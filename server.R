library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

output$oid1 <- renderPrint({input$id1})

output$SpecPlot <- renderPlot({
  if (!is.null(input$id1)) {
    species <- input$id1
    df <- iris[iris$Species %in% species,]
    plot(df$Sepal.Width, df$Sepal.Length)
    abline(lm(df$Sepal.Length~df$Sepal.Width))
  }
  })
})