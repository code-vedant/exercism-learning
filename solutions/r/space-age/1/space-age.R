orbital_periods <- list(
  mercury = 0.2408467,
  venus   = 0.61519726,
  earth   = 1.0,
  mars    = 1.8808158,
  jupiter = 11.862615,
  saturn  = 29.447498,
  uranus  = 84.016846,
  neptune = 164.79132
)

space_age <- function(seconds, planet) {
  earth_seconds <- 31557600
  if (!planet %in% names(orbital_periods)) {
    stop("Invalid planet name")
  }
  
  age <- seconds / (earth_seconds * orbital_periods[[planet]])
  
  return(round(age, 2))
}
