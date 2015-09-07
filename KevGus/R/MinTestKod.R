#' Take two numbers.
#' 
#' @param e A number.
#' @param t A number.
#' @return The largest number that divides both of them without leaving a remainder.
#' @examples
#' euclidian(100, 1000)
euclidian <- function(e,t){
  stopifnot(is.numeric(e), is.numeric(t))
  q <- 0
  while(t != 0){
    q <- t
    t <- e %% t
    e <- q
  }
  return(e)
}

