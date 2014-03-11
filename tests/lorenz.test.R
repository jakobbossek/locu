source("../R/lorenz.R")

set.seed(1)
x = abs(rnorm(40, mean = 50, sd = 40))
pl = lorenz(x, highlight.below.curve = TRUE, highlight.above.curve = TRUE)
