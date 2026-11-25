check_humidity_level <- function(pct_humidity) {
  stopifnot(pct_humidity < 71)
  message("humidity test passed")
  TRUE
}

report_overheating <- function(temperature) {
  if (is.null(temperature) || length(temperature) == 0 || all(is.na(temperature))) {
    stop("Sensor Broken")
  }

  if (temperature > 600) {
    stop(sprintf("Overheating: %s C", temperature))
  }

  if (temperature > 500) {
    warning(sprintf("Risk of overheating: %s C", temperature))
    return(FALSE)
  }

  message(sprintf("temperature check passed: %s \u00b0C", temperature))
  TRUE
}

monitor_the_machine <- function(pct_humidity, temperature) {
  humidity_ok <- check_humidity_level(pct_humidity)
  temp_ok <- report_overheating(temperature)

  if (isTRUE(humidity_ok) && isTRUE(temp_ok)) {
    message("All OK!")
  }

  invisible(isTRUE(humidity_ok) && isTRUE(temp_ok))
}
