square <- function(n) {
  if (n < 1 || n > 64) {
    stop("Square must be between 1 and 64")
  }
  return(2^(n - 1))
}

total <- function() {
  return(2^64 - 1)
}
