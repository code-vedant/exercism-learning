line_up <- function(name, number) {
  last_two <- number %% 100
  last_one <- number %% 10

  suffix <- if (last_two %in% 11:13) {
    "th"
  } else if (last_one == 1) {
    "st"
  } else if (last_one == 2) {
    "nd"
  } else if (last_one == 3) {
    "rd"
  } else {
    "th"
  }

  sprintf("%s, you are the %d%s customer we serve today. Thank you!", name, number, suffix)
}