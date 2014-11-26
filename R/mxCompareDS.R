#' 
#' @title Assign Model Parameters
#' @description This function is similar to OpenMx function \code{mxCompare}. 
#' @details See details of the OpenMx function 'mxCompare' in the package \code{OpenMx}.
#' @param base a mxModel object or list of MxModel objects
#' @param comparison a mxModel object or list of MxModel objects
#' @param all a boolean value on whether to compare all bases with all comparisons. Defaults to FALSE
#' @return a table of comparison containing the name of the base model,
#' the name of the comparison model, number of estimated parameters in the model,
#' minus 2*log-likelihood of the comparison model, degrees of freedom of the comparison model,
#' Akaike's Information Criterion for the comparison model, Difference in minus 2*log-likelihoods 
#' of the base and comparison models, Difference in degrees of freedoms of the base and comparison 
#' models and P-value for likelihood ratio test based on diffLL and diffdf values
#' @author Gaye, A., Kutschke, J.
#' @export
#' @references   Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, 
#' Jeffrey Spies, Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras Mehta, and John Fox. (2011) 
#' OpenMx: An Open Source Extended Structural Equation Modeling Framework. Psychometrika. 
#' Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne Estabrook, 
#' Timothy C. Bates, Paras Mehta, Timo von Oertzen, Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian Karch and 
#' Andreas M. Brandmaier. (2012) OpenMx 1.3 User Guide.
#' 
mxCompareDS <- function(base, comparison, all=FALSE){
  
  # construct the command to evaluate
  if (!missing(base)) {base = paste0("c(", paste(base, collapse=", "), ")")}
  if (!missing(comparison)) {comparison = paste0("c(", paste(comparison, collapse=", "), ")")}
  
  myexpr <- paste0("mxCompare(base=",base, ", comparison=", comparison, ", all=", all,")")
  
  
  # call the OpenMx 'mxModel' function
  library(OpenMx)
  output <- eval(parse(text=myexpr))
  return(output)
}
