#'
#' @title Runs 'mxAlgebra'
#' @param expr a list which contains the objects to carry out a caluclation for
#' and the algebraic operator or null if no operator symbol is required.
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
  symbol <- expr[[2]]
  operators <- c("hat","percAsterix","asterix","percX","percAdd","slash","plus","percHat")
  if(expr[[2]] %in% operators){
    if(symbol=="hat"){ symbol <- "^" }
    if(symbol=="percAsterix"){ symbol <- "%*%" }
    if(symbol=="asterix"){ symbol <- "*" }
    if(symbol=="percX"){ symbol <- "%x%" }
    if(symbol=="percAdd"){ symbol <- "%&%" }
    if(symbol=="slash"){ symbol <- "/" }
    if(symbol=="plus"){ symbol <- "+" }
    if(symbol=="percHat"){ symbol <- "%^%" }
    str <- expr[[1]][1]
    for(i in 2:length(expr[[1]])){
      str <- paste0(str,symbol,str <- expr[[1]][i])
    }
    myexpr <- paste0("mxAlgebra(", str,", '", name, "', ", dimnames, ")")
  }else{
    str <- expr[[1]]
    myexpr <- paste0("mxAlgebra(", symbol, "(", paste(str, sep=","), ")",  ", '", name, "', ", dimnames, ")")
  }
  
  output <- eval(parse(text=myexpr))
  return(output)
}