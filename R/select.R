#' Select an R course id
#' 
#' @return 
#' The course id.
#' 
#' @importFrom utils menu
#' 
#' @export

select <- function() {
  id <- utils::menu(
    choice = c(
      "Best Practices", 
      "Data Manipulation",
      "Data Visualization"
    ),
    graphics = FALSE,
    title = "Select a course:"
  ) 
  if (id == 0) {
    stop("No course selected.", call. = FALSE) 
  } else {
    options("rcourse_id" = id) 
    return(invisible(id))
  }
}

#' @noRd
#' @importFrom cli cli_text

.onAttach <- function(lib, pkg) {
  cli::cli_text("Run {.run rcourse::select()} to select a course.")
  invisible()
}
