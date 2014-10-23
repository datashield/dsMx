#'
#' @title Runs 'mxAlgebra'
#' @param expression a list which contains the objects to carry out a caluclation for
#' and the algebraic operator or null if no operator symbol is required.
#' @param name an optional character string indicating the name of the object.
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
mxAlgebraDS <- function (expression, name = NA, dimnames = NA){
  # reconstruct the expression passed on from the client side i.e. 
  # replacing characters by their equivalent 'omxSymbolTable' symbols/names
  # and generate the final command to evaluate (the command is formed as a 
  # string character; we run the command by actually evaluating the string character).
  str <- recontruct(expression)
  myexpr <- paste0("mxAlgebra(", str,", '", name, "', ", dimnames, ")")
  
  # run the command
  library(OpenMx)
  output <- eval(parse(text=myexpr))
  return(output)
}