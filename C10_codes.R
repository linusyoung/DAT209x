# Ch 10

# Exercise 1
par(mfrow = c(3,3), mar = c(1,1,1,1))
    
set.seed(779)
for(i in 1:9){
  hist(rnorm(25), probability = TRUE, main = paste("Histogram",1))
  curve(dnorm,add = TRUE,col = "red",lwd = 3)
}

# Exercise 2
par(mfrow = c(1,1))
my_ozone <- airquality$Ozone[!is.na(airquality$Ozone) & airquality$Ozone>1]
mean_1 <- mean(my_ozone)
sd_1 <- sd(my_ozone)
par()
length(my_ozone)
set.seed(55789)
simu_1 <- rnorm(length(my_ozone), mean = mean_1, sd = sd_1)
qqplot(simu_1, my_ozone, xlab = "simulation 1", ylab = "ozone", main = "simulation 1")
lines(0:200,0:200,type="l",lwd=3,col="red")
dnorm
mean_2 <- mean(log(my_ozone))
sd_2 <- sd(log(my_ozone))

par(mar = c(5,5,5,5))
set.seed(8942)
simu_2 <- rnorm(length(my_ozone), mean = mean_2, sd = sd_2)
qqplot(exp(simu_2), my_ozone, xlab = "simulation 2", ylab = "ozone", main = "simulation 2")
lines(0:200,0:200,type="l",lwd=3,col="red")

# Lab
dat <- Lab10
table(dat$Genotype)
ba <- dat$systolic.bp[dat$Genotype == "BA"]
bb <- dat$systolic.bp[dat$Genotype == "BB"]
test_result <- t.test(ba, bb)
test_result
hist(ba, probability = TRUE)
curve(dnorm,add = TRUE,col = "red",lwd = 3)
hist(bb, probability = TRUE)
runif(26)
set.seed(1234)

n1 <- length(ba)

sim <- function(){
  my_new_data <- dat
  my_new_data$Genotype <- "BB"
  index_temp <- sample(1:50, 26)  
  my_new_data$Genotype[index_temp] <- "BA"
  new_data1 <- my_new_data$systolic.bp[my_new_data$Genotype=="BA"]
  new_data2 <- my_new_data$systolic.bp[my_new_data$Genotype=="BB"]
  res <- t.test(new_data1,new_data2)$p.value
  res
}
set.seed(554)
run_times = 100000
my_t_test <- replicate(run_times, sim())
length(my_t_test[my_t_test>test_result])/run_times
