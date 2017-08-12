# Ch 9
# Exercise 9.1
# for grouping
cycle(presidents)
tapply(presidents, cycle(presidents),mean, na.rm = TRUE)

# Exercise 9.2
summary(airquality$Wind)
?cut
my_cut <- cut(airquality$Wind,breaks=2*(1:11)-1)
tapply(airquality$Solar.R, my_cut, mean, na.rm = TRUE)

# Exercise 9.3
summary(swiss)
cut_agri <- cut(swiss$Agriculture, breaks = 10*(1:10))
cut_cath <- cut(swiss$Catholic, breaks = 10*(1:10))
tapply(swiss$Fertility, list(cut_agri, cut_cath), mean)

# Quiz
sapply(airquality, mean)
colMeans(airquality)
?sapply

table(LowTemp = airquality$Temp < 65, airquality$Month)
prop.table(with(airquality, table(Month, Temp > 80)),1)
prop.table(with(airquality, table(Temp > 80, Month)),2)

# Lab
my_data <- data.frame(Treatment = c(rep("A",4),rep("B",4)),
                    Stone = rep(rep(c("Small","Large"),c(2,2)),2),
                    Success = rep(c(1,0),4),
                    Count = c(81,6,192,71,234,36,55,25))

my.table <- xtabs(Count~Treatment+Success+Stone,data = my_data)
prop.table(margin.table(my.table, 1:2),1)
prop.table(my.table[,,2],1)
prop.table(my.table[,,2],2)
prop.table(my.table[2,,],2)

prop.table(margin.table(my.table, c(1,3)),2)

prop.table(margin.table(my.table, c(3,1)),1)
