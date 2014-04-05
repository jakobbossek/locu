library(methods)
library(testthat)
library(devtools)

load_all(".", reset = TRUE)

x = c(2,3,4,5,6,8,8,30)
res = locu(x)
pl = autoplot(res, highlight.below.curve = TRUE, highlight.above.curve = TRUE, point.size = 10)


x = c(rep(0, 10), 100)
print(gini(x))

