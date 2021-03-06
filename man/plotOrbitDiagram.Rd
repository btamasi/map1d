% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotOrbitDiagram.R
\name{plotOrbitDiagram}
\alias{plotOrbitDiagram}
\title{Orbit diagram.}
\usage{
plotOrbitDiagram(map, from, to, steps = 100, n.iter = 500, n.save = 200,
  x0 = runif(1), col = rgb(1, 0, 0, alpha = 0.2), ...)
}
\arguments{
\item{map}{A function with two inputs (value and parameter) that describes
the map.}

\item{from}{The lower bound of the parameter value.}

\item{to}{The upper bound of the parameter value.}

\item{steps}{The number of steps between \code{from} and \code{to}. Defaults
to 100.}

\item{n.iter}{The number of iterations for each orbit. Defaults to 500.}

\item{n.save}{How many iterations are saved for each orbit? Defaults to 200.}

\item{x0}{Initial value. Defaults to \code{runif(1)}.}

\item{col}{The color of the diagram. Defaults to \code{rgb(1, 0, 0, alpha =
0.2)}.}

\item{...}{Additional inputs for plotting.}
}
\value{
None
}
\description{
Orbit diagram.
}
\examples{
plotOrbitDiagram(function(x, r) r * sin(pi * x), 0.6, 1, 1000, 800, 500)
plotOrbitDiagram(mapLogistic, 3.2, 4, 500)
}

