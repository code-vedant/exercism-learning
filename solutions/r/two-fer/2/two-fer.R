two_fer <- function(input = "") {
  ifelse(input != "",
         paste0("One for ", input, ", one for me."),
         "One for you, one for me.")
}
