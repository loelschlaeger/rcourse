#' Start the practicals for an R course
#'
#' @param id
#' The course id.
#' @param as_rstudio_job,launch.browser
#' Passed to \code{\link[learnr]{run_tutorial}}.
#'
#' @return
#' No return value.
#'
#' @export
#'
#' @importFrom learnr run_tutorial

practicals <- function(
    id = getOption("rcourse_id", default = select()), as_rstudio_job = FALSE,
    launch.browser = TRUE
  ) {
  name <- if (isTRUE(all.equal(id, 1))) {
    "good_practices"
  } else if (isTRUE(all.equal(id, 2))) {
    "data_manipulation"
  } else if (isTRUE(all.equal(id, 3))) {
    "data_visualization"
  } else {
    stop("No course selected.", call. = FALSE)
  }
  learnr::run_tutorial(
    name = name,
    package = "rcourse",
    as_rstudio_job = as_rstudio_job,
    shiny_args = list(launch.browser = launch.browser)
  )
}
