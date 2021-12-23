####The Rank Version of von Neumann's Ratio Test for Randomness###
###############################################################################################
#load package lawstat
library(lawstat)
w<-read.csv("G:/Gazvin/Azmoon/week.csv",header=TRUE)
x<-read.csv("G:/Gazvin//Azmoon/fortnight.csv",header=TRUE)
bartels.test(w$Q)
bartels.test(x$Q)


