# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(n) {
  square_of_sum <- sum(1:n)^2
  sum_of_squares <- sum((1:n)^2)
  
  return(square_of_sum - sum_of_squares)
}

difference_of_squares(10)
