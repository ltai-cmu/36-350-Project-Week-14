#random file to put on github for 36-350

library(plotly)
library(ggplot2)

shinyUI(
  
  navbarPage(
    title = "Iris",
    
    tabPanel("Iris: renderPlot",
             titlePanel("Regression: Petal Length vs Sepal Length"),
             
             checkboxInput(inputId = "types",
                           label = "Include Iris Type?",
                           value = FALSE),
             
             checkboxInput(inputId = "regression",
                           label = "Include Regression Line?",
                           value = FALSE),
             
             plotOutput(outputId = "first_plot", height = "300px"),
             
    ),
    
    tabPanel("Iris: renderPlotly",
             titlePanel("Plotly: Sepal Length vs Petal Length"),
             
             plotlyOutput(outputId = "second_plot")
    )
    
  ))

