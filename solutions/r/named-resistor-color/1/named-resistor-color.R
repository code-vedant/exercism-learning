resistor_bands <- c(
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
)

band_value <- function(band) {
  unname(resistor_bands[band])
}

two_band_value <- function(bands) {
  first <- band_value(bands[1])
  second <- band_value(bands[2])
  first * 10 + second
}

ohms <- function(bands) {
  base <- two_band_value(bands)
  multiplier <- 10 ^ band_value(bands[3])
  base * multiplier
}