#' Declare symbols
#' @name declare
#' @export
#' @param ... Symbols to declare
#' @param .envir \code{environment} to store the symbols
#' @examples
#' declare(x,y=numeric(),z=integer())
declare <- function(...,.envir=parent.frame()) {
  args <- dots(...)
  argnames <-  if(is.null(names(args))) "" else names(args)
  Map(function(name,value) {
    if(nchar(name) == 0L) {
      assign(deparse(value), NULL, envir = .envir)
    } else {
      assign(name, eval(value, .envir), envir = .envir)
    }
  },argnames,args)
  invisible(NULL)
}
