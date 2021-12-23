
####### Pettitt test##########
W<-read.csv("G:/Gazvin/Azmoon/fortnight.csv",header=TRUE)
x <- as.matrix(W)



install.packages("trend")
require(trend)
station1 <- pettitt.test(W[, "A"])
n <- station1$nobs
i <- station1$estimate
A.1 <- mean(W[1:i, "A"])
A.2 <- mean(W[(i + 1):n, "A"])
A <- ts(c(rep(A.1, i), rep(s.2, (n - i))))
tsp(A) <- tsp(W[, "A"])
lines(A, lty = 2)
print(station1)
data(W)
pettitt.test(W)


##### Man kendall test##########

A<-read.csv("G:/Gazvin/Azmoon/week.csv",header=TRUE)
b <- as.matrix(A)
require(Kendall)
MannKendall(b)



