library(methods)
library(testthat)
library(devtools)

load_all(".", reset=TRUE)

# Suppose we have some data of a small company representing the monthly income of
# a small fictive company COM.pany
income = c(1,4,5,3,7,7,7,40) * 1000

# We want to compute some inequality measures ...
measures = sapply(c(gini, herfindahl), function(fun) fun(income))
names(measures) = c("Gini", "Herfindahl")

# ... and draw a Lorenz curve
lorenzCurve = locu(income)

pl = autoplot(
  lorenzCurve,
  xlab = "percentage of employees",
  ylab = "percentage of income",
  highlight.below.curve = TRUE,
  highlight.below.curve.fillcolor = "blue",
  highlight.below.curve.alpha = 0.3,
  highlight.above.curve = TRUE,
  highlight.above.curve.fillcolor = "tomato",
  highlight.above.curve.alpha = 0.5,
  point.size = 2
)

# Now we want to extend the plot
pl = pl + ggtitle("Lorenz curve of the monthly income of COM.pany")
pl = pl + annotate("text", label = "line of equality", x = 0.4, y = 0.5, size = 3)
print(pl)

