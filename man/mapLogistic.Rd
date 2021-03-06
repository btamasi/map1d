% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapLogistic.R
\name{mapLogistic}
\alias{mapLogistic}
\title{Logistic map function.}
\usage{
mapLogistic(x, a)
}
\arguments{
\item{x}{Initial number to be mapped.}

\item{a}{Parameter of the logistic function.}
}
\value{
The value \code{a * x * (1 - x)}.
}
\description{
Logistic map function.
}
\examples{
mapLogistic(0.1, 1)
}

