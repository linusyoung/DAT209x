# CH 11

# Lab
names(wine.df)
res <- lm(price~year+temp+h.rain+w.rain+h.rain:w.rain, data = wine.df)
summary(res)
coef(res)[4]+800*coef(res)[6]
newyear <- data.frame(year = 1985, 
                      temp = mean(wine.df$temp), 
                      h.rain = mean(wine.df$h.rain),
                      w.rain = mean(wine.df$w.rain))
predict.lm(res, newyear, se.fit = FALSE)

log_res <- lm(log(price)~year+temp+h.rain+w.rain+h.rain:w.rain, data = wine.df)
summary(log_res)

log_res_update <- update(log_res, ~.-h.rain:w.rain)
summary(log_res_update)

exp(predict.lm(log_res_update, newyear, se.fit = FALSE))

model1 <- res
model2 <- log_res_update

par(mfrow=c(1,2)) 
g<-function(x){dnorm(x,sd=sd(model1$res))} 
hist(model1$res,probability=TRUE) 
curve(g,col="red",lwd=3,add=TRUE) 
hist(model2$res,probability=TRUE) 
g<-function(x){dnorm(x,sd=sd(model2$res))} 
curve(g,col="red",lwd=3,add=TRUE)

