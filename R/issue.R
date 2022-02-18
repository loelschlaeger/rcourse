#' Submit an issue for the *how_to_ggplot2*-course
#'
#' @return
#' No return value.
#' 
#' @export
#' @importFrom utils browseURL

issue <- function() {
  utils::browseURL("https://github.com/loelschlaeger/howtoggplot2/issues/new/choose")
}