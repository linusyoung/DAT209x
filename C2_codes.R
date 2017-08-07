#Exercise 2.1
?paste
class(paste("R Session", 1))

#Exercise 2.2
standard <- function(x) {
  (x - mean(x)) / sd(x)
}
#1
standard(c(1,2,3,4,5))
#2
standard(c(1))

#Exercise 2.3
f <- function(x) {
  3 * sin(x/2) + x
}

f(0)
f(-1)
f(pi)
curve(f, -7, 7)

#Quiz Part 1
#Q2
y <- c(1, 2, 3.14, 4, 5)
y

#Q3
z <- c(FALSE, TRUE, 2, 3, 4)
z

#Lab
my_display <- function(x, display=FALSE, type=FALSE, prob=FALSE) {
  cat("Summary of Input: \n")
  if (display == TRUE){
    if (type == "hist"){
      hist(x, freq = !prob)  
    } else if (type == "density") {
      plot(density(x))  
    } else {
      cat("Please specify type as either hist or density \n") 
    }
  }
  return(summary(x))
}

set.seed(1234)
my_data <- rnorm(200)

my_display(my_data)

my_display(my_data, display = TRUE, type = "hist")

my_display(my_data, display = TRUE, type = "hist", prob = TRUE)

my_display(my_data, display = TRUE, type = "density")

my_display(my_data, display = TRUE)
