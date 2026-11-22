# Define the expected minutes in the oven
expected_minutes_in_oven <- function() {
  return(60)
}

# Define the remaining time in minutes
remaining_time_in_minutes <- function(mins) {
  return(expected_minutes_in_oven() - mins)
}

# Define the preparation time in minutes
prep_time_in_minutes <- function(layer) {
  return(layer * 2)
}

# Define the elapsed time in minutes
elapsed_time_in_minutes <- function(layer, mins) {
  return(prep_time_in_minutes(layer) + mins)
}