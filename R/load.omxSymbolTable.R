#' 
#' @title loads the 'omxSymbolTable'
#' @param a just a dummy
#' @description not important
#' @export
#' 
load.omxSymbolTable <- function (a="l"){
  dummy <- a
  library('OpenMx')
  data(omxSymbolTable)
}