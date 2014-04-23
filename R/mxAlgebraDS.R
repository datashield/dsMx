#' 
#' @title loads 'omxSymbolTable' and runs 'mxAlgebra'
#' @param objs, a vector of the two objects add up
#' @param name An optional character string indicating the name of the
#' object.
#' @param dimnames list, the dimnames attribute for the algebra: a list of
#' length 2 giving the row and column names respectively. An
#' empty list is treated as NULL, and a list of length one as
#' row names. The list can be named, and the list names will be
#' used as names for the dimensions.
#' @description this is exactly the same as the function in 'OpenMx' except for the fact that
#' it load 'omxSymbolTable'.
#' @export
#' 
mxAlgebraDS <- function (objs, name = NA, dimnames = NA){
  data(omxSymbolTable)
  n <- name
  d <- dimnames
  output <- OpenMx::mxAlgebra(quote(objs[1]) + quote(objs[2]), name=n, dimnames=d)
  return(output)
}