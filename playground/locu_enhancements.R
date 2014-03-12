library(locur)
x = c(2,3,3,3,3,3,3,3,3,3,4,5,1,2,2,2,2,6,18)
res = locu(x, xlab = "cumulative share of x", ylab = "cumulative share of y", main = "Neat Lorenz curve of ...", highlight.below.curve = TRUE, highlight.above.curve = TRUE, highlight.above.curve.alpha=0.3)
pl = res$plot

# add a label to the line of equality
#FIXME: label in the correct place only if the window has size A x A
pl = pl + annotate("text", angle = 45, x = 0.48, y = 0.51, label = "line of equality", size = 2.5)
ggsave(filename="locu.pdf", )
