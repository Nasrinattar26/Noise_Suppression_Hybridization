w<-read.csv("G:\\Gazvin\\CEEMDAN\\weekce.csv",header=TRUE)
class(w)
A <- as.ts(w)
A

library(Rlibeemd)


#########################CEEMDAN###################################
#Local Extrema of Time Series
ext <- extrema(A)
plot(A, ylim = range(ext$maxima[, 2], ext$minima[, 2]),main="Local Extrema of weekly Time series")
points(ext$maxima, col = 2, pch = 19)
points(ext$minima, col = 2, pch = 19)


imfs <- ceemdan(A, threads = 1)

View(imfs)

#########for finding lags for IMFs
x<-as.matrix(imfs)
nst=1;n=2693;y=rep(0,n);c=11
d<- (x[,c])

acf(d)
pacf(d)
########EXPORTING DATA####
#install.packages("openxlsx") 
#library(openxlsx)
#write.xlsx(imfs, "fortnightceresults.xlsx")

#pacf baraye output ma lag hara moshakhas mikonad
#ccf ham ba tavajoh b dadehaye vorodi, lag haye input ha ra moshakhas mikonad baraye ma
#dar inja man debi dadeh vorodi and rosob dadeh khoroji man bod

IMF1<- imfs[,1]
acf(IMF1)
pacf(IMF1)


Res<- imfs[,9]
acf(Res)
pacf(Res)









##############################################

# trend extraction
ts.plot(A, imfs[, ncol(imfs)], col = 1:2, 
        main = "t", ylab = "streamflow")

# CEEMDAN for logarithmic demand, note that increasing ensemble size 
# will produce smoother results
imfs <- ceemdan(log(A), ensemble_size = 50, threads = 1)
plot(ts.union("log(obs)" = log(A), Seasonal = imfs[, 1], 
              Irregular = rowSums(imfs[, 2:5]), Trend = imfs[, 6]), 
     main = "Streamflow")

































