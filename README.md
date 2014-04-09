locur
=====

This is a small package for the famous statistical programming language R. It offers the possibility to draw nice Lorenz curves with Hadley Wickhams ggplot2 package and compute different inequality measures (until now only the Gini-Index and the Herfindahl-Index are implemented).

To use it you simply need to install it from CRAN with
```splus
install.packages("locur")
```

Example
=======

Imagine we have the monthly income of several employees of the company COM.pany given as a vector. We can now simply draw a Lorenz curve for this data with the following R-code:
```splus
income = c(1,4,5,3,7,7,7,40) * 1000 # our source data
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
print(pl)
```
For the autoplot function, only the first argument is neccessary. All other parameters are optional and preset with useful defaults. The options should be pretty self-explanatory. For more details see the corresponding R help pages.

Get in touch
============

Please address questions regarding the usage of locur to the author Jakob Bossek <j.bossek@gmail.com>. Feature requests are welcome.

