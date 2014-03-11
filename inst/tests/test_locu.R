test_that("Lorenz curve is plotted", {
  x = abs(rnorm(40, mean = 50, sd = 40))
  res = locu(x, highlight.below.curve = TRUE, highlight.above.curve = TRUE)
  expect_is(res, "locu")
  expect_equal(x, res$source)
})

set.seed(1)
