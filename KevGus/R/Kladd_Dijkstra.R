# wiki_graph <-
# data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#            v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#            w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

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
  }
  
  # Här börjar det bli osäkert.
  u <- NA # Här måste vi definera "u" innan vi kan använda den. NA känns osäkert kan även vara NULL.
  
  # Men Oscar tipsade ju lite om använda length, eftersom att vi hela tiden ska minska denna vector när vi
  # har hittat den optimala vägen till varje nod.
  while(length(minaNoder) != 0) {
    min(dist) # ????????????????????????????
  }
  #
  #
  # Fortsätt här
  #
  #
  
  return dist[], prev[]
}
