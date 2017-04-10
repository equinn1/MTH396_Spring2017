set.seed(1)


N=6
x = seq(1,6)
y = 3 + 1.5*x + rnorm(N,0,2)
plot(y~x)

lm1 <- lm(y~x)
summary(lm1)

y

lm1$fitted.values

lm1$fitted.values+lm1$residuals

sum(lm1$residuals)

sum(lm1$residuals^2)

x2 = rnorm(N)
x2

lm2 = lm(y~x+x2)

sum(lm2$residuals^2)

x3 = rnorm(N)
x3

lm3 = lm(y~x+x2+x3)

sum(lm3$residuals^2)

x4 = rnorm(N)
x4

lm4 = lm(y~x+x2+x3+x4)

sum(lm4$residuals^2)

x5 = rnorm(N)
x5

lm5 <- lm(y~x+x2+x3+x4+x5)

lm5$residuals

y

lm2$fitted.values

lm2$residuals