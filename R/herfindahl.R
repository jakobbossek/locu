#' Computes the Herfindahl-(Hirschmann) index measure of concentration.
#'
#' @param x [\code{numeric}]\cr
#'   Vector of (positive) numbers.
#' @return [\code{numeric(1)}]
#'   Herfindahl index.
#' @export
#' @examples
#' x = c(1, 5, 19, 7, 8)
#' H = herfindahl(x)
#' print(H)
herfindahl = function(x) {
  #FIXME: maybe later deal with NAs
  checkArg(x, cl = "numeric", lower = 0, min.len = 1, na.ok = FALSE)
  if (any(is.infinite(x))) {
    stopf("All values must be finite.")
  }
  if (any(is.na(x))) {
    stopf("At the moment NAs are not allowed.")
  }
  n = length(x)
  proportions = x / sum(x)
  H = sum(proportions^2)
  return(H)
}
