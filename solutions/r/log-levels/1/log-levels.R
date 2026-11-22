message <- function(msg) {
  trimws(sub("^\\[[A-Z]+\\]:[[:space:]]*", "", msg))
}

log_level <- function(msg) {
  tolower(sub("^\\[([A-Z]+)\\]:.*$", "\\1", msg))
}

reformat <- function(msg) {
  paste0(message(msg), " (", log_level(msg), ")")
}