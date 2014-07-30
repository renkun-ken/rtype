equal <- function(x,y) {
  all(x==y)
}

dots <- function(...) {
  eval(substitute(alist(...)))
}

checktype <- function(x, type, obj) {
  if(!type(x))
    stop(obj," fails type checking with ", deparse(substitute(type)))
  invisible(NULL)
}

checkcond <- function(x, cond, obj, ...) {
  Map(function(name,value) {
    actual <- do.call(name,list(x))
    valid <- equal(actual,value)
    if(!valid) {
      stop(obj," [",
        name," = ",deparse(actual,
          width.cutoff = 20L,nlines = 1L, ...),"] violates condition [",
        name," = ",deparse(value,
          width.cutoff = 20L,nlines = 1L, ...),"]",call. = FALSE)
    }
  },names(cond),cond)
  invisible(NULL)
}

check <- function(x, value, type, ...) {
  cond <- list(...)
  if(!is.null(x))
    checktype(x, type, "symbol")
  checktype(value, type, "value")
  checkcond(value, cond, "value")
  value
}
