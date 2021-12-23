#calculating ACF and PACF for stream flow data in both weekly and fortnight

w<-read.csv("G:/Gazvin/ACF+PACF/week.csv",header=TRUE)

x<-read.csv("G:/Gazvin/ACF+PACF/fortnight.csv", header = TRUE)

acf(w)
pacf(w)

acf(w)
pacf(w)
ccf(SSL, Q, ylab = "cross-correlation")
