
####### outliers##########
####################################################################
###########Rosner's Test for Outliers###########
install.packages("Envstats")
require(EnvStats)

####for weekly#####
w<-read.csv("G:/Gazvin/Azmoon/week.csv",header=TRUE)
w1 <- as.matrix(w)
rosnerTest(w1, k = 3, alpha = 0.05, warn = TRUE)


####for fortnight####
x<-read.csv("G:/Gazvin//Azmoon/fortnight.csv",header=TRUE)
x1 <- as.matrix(w)
rosnerTest(x1, k = 3, alpha = 0.05, warn = TRUE)

################################################################
####Bulletin 17B outlier test################
#Multiple Grubbs-Beck Low-Outlier Test
install.packages ("MGBT")
require(MGBT)

w<-read.csv("G:/Gazvin/Azmoon/week.csv",header=TRUE)
w1 <- as.matrix(w)
MGBTcohn2016(w1)


####for fortnight####
x<-read.csv("G:/Gazvin//Azmoon/fortnight.csv",header=TRUE)
x1 <- as.matrix(w)

MGBTcohn2016(x1)








