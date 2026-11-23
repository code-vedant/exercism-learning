does_stack_include_card <- function(stack, card) {
  card %in% stack
}

get_card_position <- function(stack, card) {
  pos <- which(stack == card)
  if (length(pos) == 0) return(-1)
  pos[1]
}

is_each_card_even <- function(stack) {
  if (length(stack) == 0) return(FALSE)
  all(stack %% 2 == 0)
}

does_stack_include_odd_card <- function(stack) {
  any(stack %% 2 != 0)
}

get_first_odd_card <- function(stack) {
  odds <- stack[stack %% 2 != 0]
  if (length(odds) == 0) return(-1)
  odds[1]
}

get_first_even_card_position <- function(stack) {
  pos <- which(stack %% 2 == 0)
  if (length(pos) == 0) return(-1)
  pos[1]
}