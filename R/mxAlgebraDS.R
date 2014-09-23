#'
#' @title Runs 'mxAlgebra'
#' @param expr a character, the expression to evaluate
#' @param name an optional character string indicating the name of the
#' object.
#' @param dimnames list, the dimnames attribute for the algebra: a list of
#' length 2 giving the row and column names respectively. An
#' empty list is treated as NULL, and a list of length one as
#' row names. The list can be named, and the list names will be
#' used as names for the dimensions.
#' @description this is exactly the same as the function in 'OpenMx' except that it 
#' provides a workaround to the difficulty of loading/and/or using omxSymbolTable
#' from the client side
#' @export
#' @author A. Gaye
#' 
mxAlgebraDS <- function (expr, name = NA, dimnames = NA){
  myexpr <- paste0("mxAlgebra(", expr,", '", name, "', ", dimnames, ")")
  library(OpenMx)
  output <- eval(parse(text=myexpr))
  return(output)
}