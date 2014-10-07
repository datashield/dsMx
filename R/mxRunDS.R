#' 
#' @title Performs the optimization of a model to estimate parameters
#' @description This function is similar to OpenMx function \code{mxRun}. 
#' @details See details of the OpenMx function 'mxRun' in the package \code{OpenMx}.
#' @param model an mxModel object to be optimized.
#' @param intervals a boolean indicating whether to compute the specified confidence intervals.
#' @param silent a boolean indicating whether to print status to terminal.
#' @param suppressWarnings a boolean indicating whether to suppress warnings.
#' @param unsafe a boolean indicating whether to ignore errors.
#' @param checkpoint a boolean indicating whether to periodically write parameter values to a file.
#' @param useSocket a boolean indicating whether to periodically write parameter values to a socket.
#' @param onlyFrontend  a boolean indicating whether to run only front-end model transformations.
#' @param useOptimizer a boolean indicating whether to run only the log-likelihood of the current 
#' free parameter values but not move any of the free parameters.
#' @author Gaye, A.
#' @export
#' @references   Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, 
#' Jeffrey Spies, Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras Mehta, and John Fox. (2011) 
#' OpenMx: An Open Source Extended Structural Equation Modeling Framework. Psychometrika. 
#' Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne Estabrook, 
#' Timothy C. Bates, Paras Mehta, Timo von Oertzen, Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian Karch and 
#' Andreas M. Brandmaier. (2012) OpenMx 1.3 User Guide.
#' 
ds.mxRun <- function(model, intervals, silent, suppressWarnings, unsafe, checkpoint, useSocket, onlyFrontend, useOptimizer){
  
  # construct the command to evaluate
  argsall <- c(intervals, silent, suppressWarnings, unsafe, checkpoint, useSocket, onlyFrontend, useOptimizer)
  argnm <-  c("intervals", "silent", "suppressWarnings", "unsafe", "checkpoint", "useSocket", "onlyFrontend", "useOptimizer")
  l <- length(argsall)
  myexpr <- paste0("mxRun(model=",model,", ")
  for(i in 1:length(argsall)){
    if(i < l){
      myexpr <- paste0(myexpr, argnm[i], "=", argsall[[i]], ", ")
    }else{
      myexpr <- paste0(myexpr, argnm[i], "=", argsall[[i]], ")")         
    }
  }

  # call the OpenMx 'mxModel' function
  library(OpenMx)
  output <- eval(parse(text=myexpr))
  return(output)
}
