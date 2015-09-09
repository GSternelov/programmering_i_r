#' @title Euclidian algorithm
#' @description Function that takes two numbers and calcualtes the greatest common divisor.
#' 
#' @param e A number.
#' @param t A number.
#' @return The largest number that divides both of them without leaving a remainder.
#' @examples
#' euclidian(100, 1000)
#' @source \url{https://en.wikipedia.org/wiki/Euclidean_algorithm}
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


#' Data frame with nodes
#' 
#' Dataset containing the different nodes for Djikstra function.
#' 
#' @format A data frame with 18 rows and 3 columns:
#' \describe{
#'    \item{v1}{current node}
#'    \item{v2}{connecting node}
#'    \item{w}{distance between nodes}
#'    }
#' @source \url{https://en.wikipedia.org/}
"wiki_graph"

