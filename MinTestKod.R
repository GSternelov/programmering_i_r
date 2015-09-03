fungerar <- c(1:100, c(-1, -1,-2))
# Här tog jag bort

# Här skriver jag lite till

# Sen lägger jag till
blirDetTacosImorgon <- function(){
  if (rnorm(1,sd=1, mean=0) > 0){
    print("Det blir tacos imorgon!")
  } else print("Nej fan det blir det inte!")
}
blirDetTacosImorgon()

