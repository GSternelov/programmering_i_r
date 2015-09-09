#' @title Dijkstra algorithm
#' @description Function that calculates the shortest path from one node to the others. 
#' 
#' @param Graph A data frame
#' @param init_node An integer.
#' @return A vector that contains the shortest path from one node to the others.
#' @examples
#' dijkstra(wiki_graph, 1)
#' @source \url{https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}



dijkstra <- function(Graph, init_node){
  
  # Skapar två tomma vektorer
  dist <- NA                       
  prev <- NA
  
  # Fyller i uppgifterna för init_node som alltid gäller.
  dist[init_node] <- 0                      
  prev[init_node]  <- NA          
  
  # Skapar en vektor med alla noder som finns.
  minaNoder <- 1:max(unique(Graph[,1:2]))
  
  # Sätter alla de noder som inte är init_node till Inf och NA
  for (v in minaNoder) {
    if (v != init_node) {                
      dist[v] <- Inf         
      prev[v] <- NA            
      
    } 
  }
  
 # prev[init_node] <- init_node
 alt <- NA  
 node_vector <- 1:max(unique(Graph[,1:2])) 
   
  while(length(minaNoder) != 0) {
    current_node <- minaNoder[init_node]
    neighbors <- Graph[Graph[,1] == current_node, 2] # Plockar ut alla grannar till "current_node"
    minaNoder[init_node] <- NA  # Minskar vektorn minaNoder med en varje loop för att kunna kontrollera loopen.
    minaNoder <- minaNoder[!is.na(minaNoder)]
    init_node <- 1
      
    for ( j in neighbors) {
      if(dist[current_node] == Inf) {
      alt <- Graph[Graph$v1 == current_node & Graph$v2 == j, 3] 
      }
      else{
      alt <- dist[current_node] + Graph[Graph$v1 == current_node & Graph$v2 == j , 3]
      }
      if (dist[j] > alt) {
        dist[j] <- alt
      }
    }
  }

  return(dist)
}

