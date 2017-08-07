#Exercise 1.1

mean(exp(rnorm(1000)))

#Exercise 1.2
A <- 1
B <- 3
C <- 1
options(digits = 7)
solutions <- c((-B + sqrt(B^2 - 4*A*C))/(2*A),(-B - sqrt(B^2 - 4*A*C))/(2*A))

#error
c(-0.4, -2.6)/solutions - 1

#Exercise 1.3
set.seed(1234)
x <- rnorm(100, mean = .5, sd = .3)
mean(x)
sd(x)
hist(x, axis = FALSE)
axis(4)

#Quiz
#1 
set.seed(1)
x <- rnorm(100)
head(x)

#2
?tail
help(tail)
?"tail"

#3
x <- 5 : 6
