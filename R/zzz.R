#' @noRd
#' @importFrom utils packageVersion

.onAttach <- function(lib, pkg) {
  # startup message
  msg <- paste0(
    "Welcome to this tiny course on {ggplot2}! Type:\n",
    "* slides() to access the slides,\n",
    "* tutorial() to start the tutorial,\n",
    "* issue() to complain."
  )
  packageStartupMessage(msg)
  invisible()
}
