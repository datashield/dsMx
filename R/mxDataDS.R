#' 
#' @title Creates a new MxData object
#' @description This function is similar to OpenMx function \code{mxData}. 
#' @details If the data frame created has a number of observation (rows) less than the allowed threshold an empty data frame is
#' is returned.
#' @param observed  a string, the name of a matrix or data.frame which provides data to the MxData object.
#' @param type A character string defining the type of data in the 'observed' argument. Must be one of "raw", "cov", "cor", or "sscp".
#' @param means An optional vector of means for use when 'type' is "cov", or "cor".
#' @param numObs  The number of observations in the data supplied in the 'observed' argument. Required unless 'type' equals "raw".
#' @return a new mxData object, which consists of a 'values' matrix of numeric starting values, a 'free' matrix describing free 
#' parameter specification, a 'labels' matrix of labels for the variable names, and 'lbound' and 'ubound' matrices of the lower and 
#' upper parameter bounds.
#' @author Gaye, A.
#' @export
#' @examples {
#'
#' }
#' @references   Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, 
#' Jeffrey Spies, Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras Mehta, and John Fox. (2011) 
#' OpenMx: An Open Source Extended Structural Equation Modeling Framework. Psychometrika. 
#' Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne Estabrook, 
#' Timothy C. Bates, Paras Mehta, Timo von Oertzen, Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian Karch and 
#' Andreas M. Brandmaier. (2012) OpenMx 1.3 User Guide.
#' 
ds.mxDataDS <- function(observed, type, means, numObs){
  # this filter sets the minimum number of observations that are allowed 
  nfilter <- setFilterDS()
  
  # call the OpenMx 'mxData' function
  library(OpenMx)
  dt <- mxData(observed, type, means, numObs)
  
  # check if the ouput matrix is valid or empty (i.e. no observation) and return accordingly
  if(dim(dt)[1] < nfilter){
    if(dim(dt)[1] == 0){
      output <- as.data.frame(matrix(NA,nrow=1, ncol=dim(dt)[2]))
      colnames(output) <- colnames(dt)
    }else{
      output <- as.data.frame(matrix(NA,nrow=dim(dt)[1], ncol=dim(dt)[2]))
      colnames(output) <- colnames(dt)
    }
  }
  
  return(output)
  
}
