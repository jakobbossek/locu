context("Gini coefficient")

test_that("gini coefficient values are as expected", {
  # extreme cases
  for (i in 1:10) {
    m = sample(2:100, 1)
    x = c(rep(0, m), runif(1))
    n = m + 1
    expect_equal(gini(x), (n-1)/n, "Gini coefficient should be maximal, if one element contains everything.")
  }

  for (i in 2:5) {
    x = rep(runif(1), i)
    expect_equal(gini(x), 0, "Gini coefficient should be zero, if all elements are equal.")
  }
})
