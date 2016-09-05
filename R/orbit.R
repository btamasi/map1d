#' Calculate the orbit of a one dimensional map.
#'
#' @param x0 Initial value.
#' @param map A function with one input that describes the map.
#' @param T The number of iterations.
#' @return A vector of the orbit.
#' @examples
#' orbit(0.1, function(x) 0.85 * sin(pi * x), 100)
#' orbit(0.2, function(x) mapLogistic(x, 3.2), 200)
#' @export
orbit <- function(x0, map, T) {
    out <- vector(mode = "numeric", length = T)
    out[1] <- x0
    for (i in 2:T) {
        out[i] <- map(out[i-1])
    }
    out
}
