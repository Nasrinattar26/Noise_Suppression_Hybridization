
require(randtests)

##################################################

w<-read.csv("G:/Gazvin/Azmoon/week.csv",header=TRUE)

x<-read.csv("G:/Gazvin//Azmoon/fortnight.csv",header=TRUE)
runs.test(w$Q)
runs.test(x$Q)



