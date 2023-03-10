#' Select an R course id
#'
#' @return
#' The course id.
#'
#' @importFrom utils menu
#' @importFrom glue glue
#' @importFrom cli cli_text
#'
#' @export

select <- function() {
  choice <- c(
    "Good Practices",
    "Data Manipulation",
    "Data Visualization"
  )
  id <- utils::menu(
    choice = choice,
    graphics = FALSE,
    title = "Select a course:"
  )
  if (id == 0) {
    stop("No course selected.", call. = FALSE)
  } else {
    options("rcourse_id" = id)
    glue::glue(
      cli::cli_text("You selected {.var {choice[id]}}. Now:"),
      cli::cli_text("Run {.run rcourse::slides()} to open the slides."),
      cli::cli_text("Run {.run rcourse::practicals()} to start the praticals.")
    )
    return(invisible(id))
  }
}

#' @noRd
#' @importFrom cli cli_text

.onAttach <- function(lib, pkg) {
  cli::cli_text("Run {.run rcourse::select()} to select a course.")
  invisible()
}
