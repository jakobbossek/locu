library(methods)
library(testthat)
library(devtools)
library(BBmisc)

if (interactive()) {
  load_all(".", reset = TRUE)
} else {
  library(locu)
}

test_dir("tests/testthat")
