library(methods)
library(testthat)
library(devtools)
library(BBmisc)

if (interactive()) {
  load_all(".", reset = TRUE)
} else {
  library(locur)
}

test_dir("inst/tests/")
