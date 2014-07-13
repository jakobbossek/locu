#' Computes the gini coefficient for a given vector.
#'
#' @param x [\code{numeric}]\cr
#'   Numeric vector of quantities.
#' @param normalize [\code{logical(1)}]\cr
#'   If \code{TRUE}, the Gini coefficient is normalized. Default is \code{FALSE}.
#' @return [\code{numeric(1)}]
#'   Gini coefficient.
#' @export
gini = function(x, normalize = FALSE) {
  assertNumeric(x, lower = 0, min.len = 1, any.missing = FALSE)
  if (any(is.infinite(x))) {
    stopf("All values must be finite.")
  }
  if (any(is.na(x))) {
    stopf("At the moment NAs are not allowed.")
  }
  n = length(x)
  gini.coefficient = 2 * sum(sort(x) * 1:n) / (n * sum(x)) - 1 - 1/n
  if (normalize)
    gini.coefficient = (n / (n-1)) * gini.coefficient
  return (gini.coefficient)
}
