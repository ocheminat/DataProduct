library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(

headerPanel("Data product - Selection of items on a graphic"),
# Sidebar with a slider input for the number of bins
sidebarPanel(
   h4('Select the species you want to see on the graphic'),
   checkboxGroupInput("id1", "Selection of species",
      c("Setosa" = "setosa",
        "Versicolor" = "versicolor",
        "Virginica" = "virginica"), selected = NULL, inline = FALSE),
   submitButton("Submit")
),

# Show a plot of the generated distribution
 mainPanel(
  h4("Illustrating output:"),
  h4("You selected the following species:"),
  verbatimTextOutput("oid1"),
  h4("Your selection gives the graphic:"),
  plotOutput("SpecPlot")
  )
  )
)