#' Assign with type checking
#'
#' @export
#' @name typed-assign
#' @param x symbol
#' @param value value to be assigned
#' @examples
#' \dontrun{
#' x <- 10L
#' atomic(x) <- 20
#' numeric(x) <- 10
#' integer(x) <- 5L
#' }
`atomic<-` <- function(x, value) {
  checkType(x, value, is.atomic, "atomic")
}

#' @rdname typed-assign
#' @export
`integer<-` <- function(x, value) {
  checkType(x, value, is.integer, "integer")
}

#' @rdname typed-assign
#' @export
`numeric<-` <- function(x, value) {
  checkType(x, value, is.numeric, "numeric")
}

#' @rdname typed-assign
#' @export
`double<-` <- function(x, value) {
  checkType(x, value, is.double, "double")
}

#' @rdname typed-assign
#' @export
`logical<-` <- function(x, value) {
  checkType(x, value, is.logical, "logical")
}

#' @rdname typed-assign
#' @export
`character<-` <- function(x, value) {
  checkType(x, value, is.character, "character")
}

#' @rdname typed-assign
#' @export
`raw<-` <- function(x, value) {
  checkType(x, value, is.raw, "raw")
}

#' @rdname typed-assign
#' @export
`complex<-` <- function(x, value) {
  checkType(x, value, is.complex, "complex")
}

#' @rdname typed-assign
#' @export
`matrix<-` <- function(x, value) {
  checkType(x, value, is.matrix, "matrix")
}

#' @rdname typed-assign
#' @export
`array<-` <- function(x, value) {
  checkType(x, value, is.array, "array")
}

#' @rdname typed-assign
#' @export
`list<-` <- function(x, value) {
  checkType(x, value, is.list, "list")
}

#' @rdname typed-assign
#' @export
`pairlist<-` <- function(x, value) {
  checkType(x, value, is.pairlist, "pairlist")
}

#' @rdname typed-assign
#' @export
`envir<-` <- function(x, value) {
  checkType(x, value, is.environment, "environment")
}

#' @rdname typed-assign
#' @export
`name<-` <- function(x, value) {
  checkType(x, value, is.name, "name")
}

#' @rdname typed-assign
#' @export
`symbol<-` <- function(x, value) {
  checkType(x, value, is.symbol, "symbol")
}

#' @rdname typed-assign
#' @export
`call<-` <- function(x, value) {
  checkType(x, value, is.call, "call")
}

#' @rdname typed-assign
#' @export
`factor<-` <- function(x, value) {
  checkType(x, value, is.factor, "factor")
}

#' @rdname typed-assign
#' @export
`fun<-` <- function(x, value) {
  checkType(x, value, is.function, "function")
}

#' @rdname typed-assign
#' @export
`expression<-` <- function(x, value) {
  checkType(x, value, is.expression, "expression")
}

#' @rdname typed-assign
#' @export
`language<-` <- function(x, value) {
  checkType(x, value, is.language, "language")
}

#' @rdname typed-assign
#' @export
`object<-` <- function(x, value) {
  checkType(x, value, is.object, "object")
}

#' @rdname typed-assign
#' @export
`table<-` <- function(x, value) {
  checkType(x, value, is.table, "table")
}

#' @rdname typed-assign
#' @export
`recursive<-` <- function(x, value) {
  checkType(x, value, is.recursive, "recursive")
}

#' @rdname typed-assign
#' @export
`vector<-` <- function(x, value) {
  checkType(x, value, is.vector, "vector")
}

#' @rdname typed-assign
#' @export
`data.frame<-` <- function(x, value) {
  checkType(x, value, is.data.frame, "data.frame")
}

#' @rdname typed-assign
#' @export
`null<-` <- function(x, value) {
  checkType(x, value, is.null, "NULL")
}
