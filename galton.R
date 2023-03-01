


library(animation)

## HTML animation page
saveHTML({
  ani.options(nmax = ifelse(interactive(), 200 + 15 - 
                              2, 2), interval = 0.03)
  quincunx2(balls = 200, col.balls = rainbow(200))
}, img.name = "quincunx2", htmlfile = "quincunx2.html", 
ani.height = 500, ani.width = 600, single.opts = paste("'controls':", 
                                                       "['first', 'previous', 'play', 'next', 'last', 'loop', 'speed'],", 
                                                       "'delayMin': 0"), title = "Demonstration of the Galton Box", 
description = c("Las Bolas", "a traves de la maquina de Galton", "muestran una", "distribucion Normal", " ", " ", " "))

ani.options(oopt)
