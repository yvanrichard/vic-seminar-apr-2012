dat <- read.csv('../data/seedpredwide.csv')

n <- 10000
var1 <- rnorm(n, 5)
var2 <- rnorm(n, 10)
indep <- rnorm(n, 5, 0.1)*var1 + rnorm(n, 0.05, 0.2)*var2
plot(var1, indep)
plot(var2, indep)
mod <- lm(indep ~ var1 + var2)
summary(mod)
anova(mod)
