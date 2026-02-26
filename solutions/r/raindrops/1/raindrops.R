raindrops <- function(number) {
  ans <- ""

  if(number %% 3 == 0){
    ans <- paste0(ans,"Pling")
  }
  if(number %% 5 == 0){
    ans <- paste0(ans,"Plang")
  }
  if(number %% 7 == 0) {
    ans <- paste0(ans,"Plong")
  }

  if(ans == ""){
    return(as.character(number))
  }
  ans
}
