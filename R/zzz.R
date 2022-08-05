#' @noRd
#' @importFrom utils packageVersion
#' @import ggplot2 learnr gapminder socviz maps mapproj ggrepel

.onAttach <- function(lib, pkg) {
  # startup message
  msg <- paste0(
    "Welcome to this tiny course on {ggplot2}! Type:\n",
    "* slides() to access the slides,\n",
    "* practicals() to start the tutorial,\n",
    "* issue() to complain."
  )
  packageStartupMessage(msg)
  invisible()
}
