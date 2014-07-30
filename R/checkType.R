checkType <- function(x, value, check, type) {
  if(!is.null(x) && !check(x))
    stop("Symbol is not ", type, call. = FALSE)
  if(check(value)) value
  else stop("Value is not ", type, call. = FALSE)
}
