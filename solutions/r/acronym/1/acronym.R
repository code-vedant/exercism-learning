acronym <- function(input) {
    input <- gsub("-"," ",input)
    input <- gsub("[[:punct:]]", "", input)
    words <- strsplit(input, "\\s+")[[1]]
    acronym <- paste0(substr(words, 1, 1), collapse = "")
    toupper(acronym)
}
