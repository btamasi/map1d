#' Plot an orbit.
#'
#' @param x A vector of the orbit.
#' @return None
#' @examples
#' plotOrbit(orbit(0.1, function(x) 0.89 * sin(pi * x), 100))
#' @export
plotOrbit <- function(x) {
    plot(1:length(x), x, type = "l", lwd = 2,
         xlab = "T", ylab = "")
}
