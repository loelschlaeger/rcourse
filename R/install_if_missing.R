#' Install and load missing packages
#'
#' @param package_names
#' A vector of package names.
#'
#' @importFrom utils install.packages
#'
#' @export
#'
#' @return
#' No return value.

install_if_missing <- function(package_names = character()) {
  stopifnot(is.vector(package_names), is.character(package_names))
  for (package_name in package_names) {
    if (!require(package_name, character.only = TRUE)) {
      utils::install.packages(package_name)
      library(package_name, character.only = TRUE)
    }
  }
}
