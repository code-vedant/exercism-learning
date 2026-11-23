# TODO: define `colors` variable
colors <- c(
  "black", "brown", "red", "orange", "yellow",
  "green", "blue", "violet", "grey", "white"
)

band <- function() {
  colors
}

color_code <- function(color) {
  match(color, colors) - 1L
}
