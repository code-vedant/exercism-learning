random_planet_class <- function(number_needed) {
  classes <- c("D", "H", "J", "K", "L", "M", "N", "R", "T", "Y")
  sample(classes, size = number_needed, replace = TRUE)
}

random_ship_registry_number <- function() {
  paste0("NCC-", sample(1000:9999, 1))
}

shuffle_starships <- function(starships) {
  if (length(starships) == 0) return(starships)
  starships[sample.int(length(starships))]
}

random_stardate <- function() {
  runif(1, min = 41000.0, max = 42000.0)
}