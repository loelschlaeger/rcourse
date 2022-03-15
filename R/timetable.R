#' Timetable for the *how_to_ggplot2*-course
#'
#' @return
#' A data frame.

timetable <- function() {
  data.frame(
    topic = c(
      "Why and what", "Our first plot", "Break",
      "Facets and more geoms", "Annotations", "Draw Maps",
      "Final discussion"
    ),
    practicals = c("", "yes", "", "yes", "yes", "yes", ""),
    row.names = c("09 - 10", "10 - 12", "12 - 13", "13 - 14", "14 - 15", "15 - 16", "16")
  )
}
