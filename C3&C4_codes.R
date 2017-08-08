# Chapter 3 Quiz Q4

x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
lapply(x, mean)

# Lab
# Q1
k <- 1000
r <- 100
set.seed(5556)
x <- data.frame(matrix(rnorm(k*r),nrow = r, ncol = k))

# Q2
my_summary <- matrix(nrow = 4, ncol = k)
for (i in 1:k) {
  my_summary[1,i] <- min(x[,i])
  my_summary[2,i] <- median(x[,i])
  my_summary[3,i] <- mean(x[,i])
  my_summary[4,i] <- max(x[,i])
}
my_summary[,1]

# Q3
my_function <- function(x) {
  return(c(min(x), median(x), mean(x), max(x)))
}

sapply(x, my_function)

# Exercise 4.2
x<-matrix(1:12,4)
y <- cbind(c(1,3,2),c(3,3,2))
y
x[cbind(c(1,3,2),c(3,3,2))] 
x

# Chapter 4 Quiz
# Q1
x<-1:3
y<-seq(4,8) 
z<-rep(9:10,1)
xyz<-c(x,y,z)

# Q4
x<-matrix(-4:5,nrow=2)
x

# Lab
set.seed(9852)
my_data<-list()
for(i in 1:100){
  my_data[[i]]<-matrix(rnorm(16),nrow=4)
}

my_index <- list()
for (i in 1:100) {
  my_index[[i]] <- my_data[[i]] < 0
}
my_index

my_negatives <- matrix(rep(0,16), nrow = 4)
for(i in 1:100){
  my_negatives <- my_negatives + my_index[[i]]
}
my_negatives
sum(my_negatives)

my_negative_values <- numeric(0) 
for(i in 1:100){
  my_negative_values <- c(my_negative_values, my_data[[i]][my_index[[i]]])
}
summary(my_negative_values)
