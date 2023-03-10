#' Start the practicals for an R course
#'
#' @param id
#' The course id.
#'
#' @return
#' No return value.
#'
#' @export
#'
#' @importFrom learnr run_tutorial

practicals <- function(id = getOption("rcourse_id", default = select())) {
  if (isTRUE(all.equal(id, 1))) {
    learnr::run_tutorial(
      "best_practices",
      package = "rcourse"
    )
  } else if (isTRUE(all.equal(id, 2))) {
    learnr::run_tutorial(
      "data_manipulation",
      package = "rcourse"
    )
  } else if (isTRUE(all.equal(id, 3))) {
    learnr::run_tutorial(
      "data_visualization",
      package = "rcourse"
    )
  }
}
