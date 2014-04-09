\name{locu}
\alias{locu}
\title{Computes support points of the Lorenz curve of a given numeric vector.}
\usage{
locu(x)
}
\arguments{
  \item{x}{[\code{numeric}]\cr Numeric source vector with
  measured quantities.}
}
\value{
[\code{list}] List containing \describe{ \item{source
[\code{numeric}]}{the source vector.} \item{data
[\code{data.frame}]}{the data frame \pkg{ggplot2} was
feeded to produce the Lorenz curve.} }
}
\description{
This function is the initial point to draw a Lorenz curve.
It computes the support points of the curve. Call
\code{autoplot} on the result object to actually draw the
curve.
}
\examples{
x = abs(rnorm(30, mean = 50, sd = 20))
lor = locu(x)
print(head(lor$data))
print(autoplot(lor, highlight.below.curve = TRUE))
}

