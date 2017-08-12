# Quiz
dat1 <- data.frame(name = c("Cat","Vic","Osc"), age = c(9,7,4))
dat1

dat2 <- data.frame(name = c("Vic","Jon","Cat"), gender = c("male","male","female"))
dat2
merge(dat1, dat2, all = TRUE)

# Lab
set.seed(449)
your.dates<-as.Date(sample(18000:20000,20), origin = "1960-01-01")
your.dates
your.days<-c(julian(your.dates,origin=as.Date("1960-01-01")))
your.days

set.seed(119) 
my.days <- sample(18000:20000,20)
my.days.structure <- month.day.year(my.days,origin=c(1,1,1960))
my.days.structure

my.dates<-as.Date(my.days, origin = "1960-01-01") 

my.date.info<-data.frame(Weekday=weekdays(my.dates),my.days.structure)
tail(my.date.info,1)
