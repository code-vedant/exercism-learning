# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  # Check if strands are equal length
  if (nchar(strand1) != nchar(strand2)) {
    stop("DNA strands must be of equal length")
  }
  
  # Split strings into individual characters
  s1 <- strsplit(strand1, "")[[1]]
  s2 <- strsplit(strand2, "")[[1]]
  
  # Count differences
  sum(s1 != s2)

}
