#' Logistic map function.
#'
#' @param x Initial number to be mapped.
#' @param a Parameter of the logistic function.
#' @return The value \code{a * x * (1 - x)}.
#' @examples
#' mapLogistic(0.1, 1)
#' @export
mapLogistic <- function(x, a) { a * x * (1 - x) }
