context("Herfindahl index")

test_that("Herfindahl index returns expected values", {
  x = c(rep(0, 10), 11)
  expect_equal(herfindahl(x), 1, info = "Herfindahl index is maximal if monopol is given.")

  x = rep(1, 10)
  expect_equal(herfindahl(x), 1 / length(x), info = "Herfindahl index is minimal, if proportions are equally distributed.")

  for (i in seq(10)) {
    x = abs(rnorm(10, mean = 10, sd = 5))
    expect_true(herfindahl(x) > 0)
  }
})
