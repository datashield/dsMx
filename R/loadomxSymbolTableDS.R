#' 
#' @title loads 'omxSymbolTable' from the paqckage 'OpenMx'
#' @description just to load this flipping table
#' @details said above
#' @export
#' 
loadomxSymbolTableDS <- function (){
  library(OpenMx)
  omxSymbolTable <- data(omxSymbolTable, envir = environment())
  return(omxSymbolTable)
}