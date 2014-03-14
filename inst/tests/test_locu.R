test_that("Lorenz curve support points are computed and ggplot2 object returned by autoplot", {
  x = abs(rnorm(40, mean = 50, sd = 40))
  lorenzCurve = locu(x)

  # check if result is of the appropriate type
  expect_is(lorenzCurve, "locu", "Lorenz curve object should by of corresponding type.")

  # source vector in output
  expect_equal(x, lorenzCurve$source, "Source vector should not change.")

  # Lorenz curve adds the (0,0) point
  expect_equal(nrow(lorenzCurve$data), length(x) + 1, "There should by exactly one additional support point more than elements in source vector, i.e., (0,0).")

  # actually plot
  pl = autoplot(lorenzCurve)
  expect_is(pl, "ggplot", "Plotted lorenz curve should by ggplot2 object.")
})
