test_that("Lorenz curve is plotted", {
  x = abs(rnorm(40, mean = 50, sd = 40))
  res = locu(x, highlight.below.curve = TRUE, highlight.above.curve = TRUE)

  # check if result is of the appropriate type
  expect_is(res, "locu")

  # source vector in output
  expect_equal(x, res$source)

  # Lorenz curve adds the (0,0) point
  expect_equal(nrow(res$data), length(x) + 1)
})
