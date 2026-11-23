colors <- c(
  "black", "brown", "red", "orange", "yellow",
  "green", "blue", "violet", "grey", "white"
)

value <- function(resistor_colors) {
  digits <- match(resistor_colors[1:2], colors) - 1L
  digits[1] * 10L + digits[2]
}