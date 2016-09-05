#' Orbit diagram.
#'
#' @param map A function with two inputs (value and parameter) that describes
#' the map.
#' @param from The lower bound of the parameter value.
#' @param to The upper bound of the parameter value.
#' @param steps The number of steps between \code{from} and \code{to}. Defaults
#' to 100.
#' @param n.iter The number of iterations for each orbit. Defaults to 500.
#' @param n.save How many iterations are saved for each orbit? Defaults to 200.
#' @param x0 Initial value. Defaults to \code{runif(1)}.
#' @param col The color of the diagram. Defaults to \code{rgb(1, 0, 0, alpha =
#' 0.2)}.
#' @param ... Additional inputs for plotting.
#' @return None
#' @examples
#' plotOrbitDiagram(function(x, r) r * sin(pi * x), 0.6, 1, 1000, 800, 500)
#' plotOrbitDiagram(mapLogistic, 3.2, 4, 500)
#' @export
plotOrbitDiagram <- function(map, from, to, steps = 100,
                             n.iter = 500, n.save = 200, x0 = runif(1),
                             col = rgb(1, 0, 0, alpha = 0.2), ...) {    
    r <- seq(from, to, length.out = steps)
    orbits <- sapply(r, function(r, map, N, M) {
        tail(orbit(x0, function(x) map(x, r), N), M)
    }, map = map, N = n.iter, M = n.save)
    plot(rep(r, each = n.save), c(orbits), col = col, pch = ".",
         xlab = "param", ylab = "orbits", ...)
}
