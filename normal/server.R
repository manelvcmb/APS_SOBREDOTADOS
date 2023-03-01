library(shiny)

shinyServer(function(input, output) {
  
  passData <- reactive({
    
  })
  
  output$plot <- renderPlot({
    passData()
    y_lim=30
    N<-input$n  
    m<-input$m
    br<-input$br
    sigma<-input$sigma
    cumu <- input$cumu
    
    #curve(dbeta(x,success[N]+1,N-success[N]+1), col='green',lty=2,lwd=4,add=TRUE)
    titulo = paste("Distribución Normal, Media=",m,", Desviación=",sigma, sep="")
    xtitulo = "Valor "
    
    x <- rnorm(N,m,sigma)
    x.ecdf = ecdf(x)
    
    if(cumu){
      hist(x, 
           breaks=br,
           xlim = c(min(x), max(x)),
           ylim= c(0,1),
           probability = TRUE, 
           #nclass = max(x) - min(x) + 1, 
           col = 'lightblue',
           xlab=xtitulo,
           ylab="Densidad",
           main = titulo)
      lines(density(x,bw=1), col = 'red', lwd = 3)
      lines(x.ecdf,col="blue",lwd=3)
    }
    else {
      hist(x, 
           breaks=br,
           xlim = c(min(x), max(x)), 
           probability = TRUE, 
           #nclass = max(x) - min(x) + 1, 
           col = 'lightblue',
           xlab=xtitulo,
           ylab="Densidad",
           main = titulo)
      lines(density(x, bw=1), col = 'red', lwd = 3)
      
    }
    
    
  
  })
})
