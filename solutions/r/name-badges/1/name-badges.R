print_name_badge <- function(id, name, department) {
  if (!is.na(id)) {
    if (is.null(department) || is.na(department)) {
      sprintf("[%d] - %s - OWNER", id, name)
    } else {
      sprintf("[%d] - %s - %s", id, name, toupper(department))
    }
  } else {
    if (is.null(department) || is.na(department)) {
      sprintf("%s - OWNER", name)
    } else {
      sprintf("%s - %s", name, toupper(department))
    }
  }
}

salaries_no_id <- function(ids, salaries) {
  sum(salaries[is.na(ids)])
}
