success_rate <- function(speed) {
  if(speed == 0) return(0)
  else if(speed < 5) return(1.00)
  else if(speed < 9) return(0.90)
  else if(speed == 9) return(0.80)
  else if(speed == 10) return(0.77)  
}

production_rate_per_hour <- function(speed) {
  return(success_rate(speed) * 221 * speed )
}

working_items_per_minute <- function(speed) {
  return(floor(production_rate_per_hour(speed)/60))
}
