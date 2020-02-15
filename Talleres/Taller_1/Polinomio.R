
#Funcion de Horner para evaluar el Polinomio
horner <- function(coefs, x){
  
  y <- 0
  multi = 0
  sum = 0
  
  for (coef in coefs) {
    
    y <- y*x + coef
    multi = multi + 1
    sum = sum + 1 
    
  }
  return(list("y"=y,"multiplicaciones"=multi,"sumas" = sum))
  
}

#Declaracion de Variables
coefs <- c(2,0,-3,3,-4)

#Llamado de funcion
resul = horner(coefs,-2)
