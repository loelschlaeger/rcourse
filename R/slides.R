#' Slides for the *how_to_ggplot2*-course
#'
#' @return
#' No return value.
#' 
#' @export
#' @importFrom utils browseURL

slides <- function() {
  utils::browseURL(system.file("slides.html", package = "howtoggplot2"))
}