library(purrr)
library(dplyr)




line_factory <- function(a, b, c){
      
      f <- function(x){
            (a*(c*x))/(b+(c*x))
      }
}


fun_one <- line_factory(1,1,1)
plot(fun_one, from = 0, to = 10, ylim = c(0, 2))

fun_two <- line_factory(2,1,1)
plot(fun_two, from = 0, to = 10, add = T, col = "red")




set.seed(42)
parameters <- replicate(5,
          sample(x = seq(.2,1,0.2),
                 replace = F, size = 3),
          simplify = T) %>% 
      cbind(c(1,1,1),.)


all_lines <- apply(parameters,
                   2,
                   function(x) line_factory(x[1], x[2], x[3])) 

plot(x = all_lines[[1]], from = 0, to = 10)

all_lines %>% 
      purrr::iwalk(~plot(.x,
                         to = 10, 
                         add = ifelse(.y > 1, T, F),
                         col = .y,
                         ylim = c(0, 1)))


