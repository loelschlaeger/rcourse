#' Submit an issue about an R course
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

issue <- function(id = getOption("rcourse_id", default = select())) {
  if (isTRUE(all.equal(id, 1))) {
    utils::browseURL(
      "https://github.com/loelschlaeger/rcourse/issues/new?labels=best%20practices&template=mistake.md"
    )
  } else if (isTRUE(all.equal(id, 2))) {
    utils::browseURL(
      "https://github.com/loelschlaeger/rcourse/issues/new?labels=data%20manipulation&template=mistake.md"
    )
  } else if (isTRUE(all.equal(id, 3))) {
    utils::browseURL(
      "https://github.com/loelschlaeger/rcourse/issues/new?labels=data%20visualization&template=mistake.md"
    )
  }
}
