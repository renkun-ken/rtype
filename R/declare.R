#' Declare symbols
#' @name declare
#' @export
#' @param ... Symbols to declare
#' @param .envir \code{environment} to store the symbols
#' @examples
#' declare(x,y=numeric(),z=integer())
declare <- function(...,.envir=parent.frame()) {
  dots <- eval(substitute(alist(...)))
  argnames <-  if(is.null(names(dots))) "" else names(dots)
  Map(function(name,value) {
    if(nchar(name) == 0L) {
      assign(deparse(value), NULL, envir = .envir)
    } else {
      assign(name, eval(value, .envir), envir = .envir)
    }
  },argnames,dots)
  invisible(NULL)
}
