# Ch 12

head(state.x77)
popdata<-data.frame(state=row.names(state.x77),murder=state.x77[,5])
popdata$state<-as.character(popdata$state)

for (i in 1:nrow(popdata)) {
  latlon = geocode(popdata$state[i])
  popdata$lon[i] = as.numeric(latlon[1])
  popdata$lat[i] = as.numeric(latlon[2])
}

usa_center = geocode("United States")
USA <- ggmap(get_map(location=usa_center,zoom=4), extent="panel")

USA + geom_point(aes(x=lon, y=lat), data = popdata, col="black",
                 alpha=0.4, size=popdata$murder)

head(popdata$murder)

# Quiz
qplot(hp, qsec, data = mtcars, geom = c("point","smooth"), method="lm", facets = (cyl~.), color = cyl)
qplot(hp, qsec, data = mtcars, geom = c("point","smooth"), method="lm", color = cyl)


x<-rnorm(1000, mean=-5) 
plot(density(x))
ggplot(data=x) + geom_density()
ggplot() + aes(x = x) + geom_density()
qplot(x, geom = "density")

# Lab
my.data<-data.frame(federal.states=c("Baden-Württemberg","Bayern","Berlin",
                                     "Brandenburg","Bremen","Hamburg","Hessen",
                                     "Mecklenburg-Vorpommern","Niedersachsen",
                                     "Nordrhein-Westfalen","Rheinland-Pfalz",
                                     "Saarland","Sachsen","Sachsen-Anhalt",
                                     "Schleswig-Holstein","Thüringen"), 
                    Population=c(10716644,12691568,3469849,2457872,661888,1762791,
                                 6093888,1599138,7826739,17638098,4011582,989035,4055274,
                                 2235548,2830864,2156759))
str(my.data)
my.data$federal.states<-as.character(my.data$federal.states)
atlon <- geocode(my.data$federal.states)
latlon <- atlon
latlon
my.data <- cbind(my.data, latlon)
my.data
Germany <- ggmap(get_map(location="Germany",zoom=6), extent="panel")
Germany
