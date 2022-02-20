#' @noRd
#' @importFrom utils packageVersion

.onAttach <- function(lib, pkg) {
  # startup message
  msg <- paste0(
    "Welcome to this tiny course on ggplot2!\n",
    "Type\n",
    "- slides() to access the slides,\n",
    "- tutorial() to start the tutorial,\n",
    "- issue() to submit an issue."
  )
  packageStartupMessage(msg)
  invisible()
}
