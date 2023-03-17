#' Open the slides of an R course
#'
#' @param id
#' The course id.
#'
#' @return
#' No return value.
#'
#' @export
#'
#' @importFrom utils browseURL

slides <- function(id = getOption("rcourse_id", default = select())) {
  if (isTRUE(all.equal(id, 1))) {
    utils::browseURL(
      system.file("slides_good_practices.html", package = "rcourse")
    )
  } else if (isTRUE(all.equal(id, 2))) {
    utils::browseURL(
      system.file("slides_data_manipulation.html", package = "rcourse")
    )
  } else if (isTRUE(all.equal(id, 3))) {
    utils::browseURL(
      system.file("slides_data_visualization.html", package = "rcourse")
    )
  } else {
    stop("No course selected.", call. = FALSE) 
  }
}
