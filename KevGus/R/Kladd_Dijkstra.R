init_node <- 1 
wiki_graph <-
 data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
            v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
            w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

# Översättning från psuedo koden
# 
# init_node <- 1 Sätter init_node till ett när jag testar allt för hand.
Dijkstra <- function(Graph, init_node){
  
  # Skapar två tomma vektorer
  dist <- NA                       
  prev <- NA
  
  # Fyller i uppgifterna för init_node som alltid gäller.
  dist[init_node] <- 0                      
  prev[init_node]  <- NA          
  
  # Skapar en vektor med alla noder som finns.
  minaNoder <- 1:max(unique(wiki_graph[,1:2]))
  
  # Sätter alla de noder som inte är init_node till Inf och NA
  for (v in minaNoder) {
    if (v != init_node) {                
      dist[v] <- Inf         
      prev[v] <- NA            
      
    } 
  
  
 # prev[init_node] <- init_node
 alt <- NA
  
  # Men Oscar tipsade ju lite om använda length, eftersom att vi hela tiden ska minska denna vector när vi
  # har hittat den optimala vägen till varje nod.
  while(length(minaNoder) != 0) {
    current_node <- minaNoder[1]
    neighbors <- wiki_graph[wiki_graph[,1] == current_node, 2] # Plockar ut alla grannar till "current_node"
    minaNoder[1] <- NA  # Minskar vektorn minaNoder med en varje loop för att kunna kontrollera loopen.
    minaNoder <- minaNoder[!is.na(minaNoder)]
    
    for ( j in neighbors) {
      if(dist[v] == Inf) {
      alt <- wiki_graph[wiki_graph$v1 == v & wiki_graph$v2 == j , 3] 
      }
      else
      alt <- dist[v] + wiki_graph[wiki_graph$v1 == v & wiki_graph$v2 == j , 3]
      
      if (dist[v] > alt) {
        dist[v] <- alt
      }
       
      }
    }
  }
  
  return dist[], prev[]
}
 alt[i] <- 
  dist[1] + wiki_graph[wiki_graph$v1 == i & wiki_graph$v2 == j , 3] 
 
