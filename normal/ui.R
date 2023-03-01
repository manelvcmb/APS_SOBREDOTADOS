library(shiny)


shinyUI(fluidPage(
    
  titlePanel("Distribución Normal"),
  
 sidebarLayout(
    sidebarPanel(
      
      checkboxInput("cumu", "Mostrar CDF", FALSE),
      sliderInput("n", 
                  "Número de experimentos:", 
                   value = 1000,
                   min = 1, 
                   max = 10000),
      
      br(),
      
      sliderInput("m", 
                  "Media:", 
                  value = 0,
                  min = -10, 
                  max = 10),
      br(),
      
      sliderInput("sigma", 
                  "Desviación Típica:", 
                  value = 1,
                  min = 1, 
                  max = 10),
      
      br(),
      
      sliderInput("br", 
                  "Número de Rangos:", 
                  value = 20,
                  min = 1, 
                  max = 100)
      
    ),
    
    mainPanel(
      plotOutput("plot")
      )
    )
  )
)
