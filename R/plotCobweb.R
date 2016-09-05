#' Cobweb plot.
#'
#' @param map A function with one input that describes the map.
#' @param x0 Initial value.
#' @param n.iter The number of iterations.
#' @param from The lower bound of the x axis. Defaults to 0.
#' @param to The upper bound of the x axis. Defaults to 1.
#' @return None
#' @examples
#' plotCobweb(function(x) 1.2 * pmin(x, 1 - x), 0.1, 100) # Tent map
#' @export
plotCobweb <- function(map, x0, n.iter, from = 0, to = 1) {
    x <- seq(from, to, length.out = 200)
    y <- map(x)
    plot(x, y, type = "l", col = "red", lwd = 2,
         xlim = c(from, to), ylim = c(min(y), max(y) * 1.05),
         xlab = expression(X[t]), ylab = expression(X[t+1]),
         xaxs = "i", yaxs = "i")
    abline(0, 1, lwd = 2)

    x.new <- map(x0)
    x.old <- x0
    lines(x = c(x.old, x.old), y = c(0, x.new))
    for (i in 1:n.iter) {
        ## Horizontal line
        lines(x = c(x.old, x.new), y = c(x.new, x.new))
        ## Vertical line
        x.old <- x.new
        x.new <- map(x.new)
        lines(x = c(x.old, x.old), y = c(x.old, x.new))
    }
}
