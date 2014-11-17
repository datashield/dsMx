#' 
#' @title Evaluates values in an mxModel
#' @description This function is similar to OpenMx function \code{mxModel}. 
#' @details See details of the OpenMx function 'mxModel' in the package \code{OpenMx}.
#' @param expression  an arbitrary R expression.
#' @param model	the model in which to evaluate the expression.
#' @param compute	if TRUE then compute the value of algebra expressions.
#' @param show	if TRUE then print the translated expression.
#' @param defvar.row The row number for definition variables when compute=TRUE.
#' @param cacheBack if TRUE then return the list pair (value, cache).
#' @return the evaluation of an expression
#' @author Gaye, A.
#' @export
#' @references   Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, 
#' Jeffrey Spies, Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras Mehta, and John Fox. (2011) 
#' OpenMx: An Open Source Extended Structural Equation Modeling Framework. Psychometrika. 
#' Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne Estabrook, 
#' Timothy C. Bates, Paras Mehta, Timo von Oertzen, Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian Karch and 
#' Andreas M. Brandmaier. (2012) OpenMx 1.3 User Guide.
#' 
mxEvalDS <- function(expression, model, compute, show, defvar.row, cacheBack){
  
  # replace the characters in the expression by their corresponding symbols
  str <- reconstruct(expression)
  
  # get the names of the objects and the labels of the single estimates of the model
  library(OpenMx)
  myModel <- model
  exprs1 <- paste0("names(", myModel, ")")
  modelobj1 <- eval(parse(text=exprs1))
  exprs2 <- paste0("omxGetParameters(", myModel, ")")
  modelobj2 <- eval(parse(text=exprs2)) 
  modnames <- c(modelobj1, modelobj2)
  
  # first we extract the element of the expression. Suffix '(' added to ensure the word is replaced only when used as function
  mySymbols <- c("solve(", "t(", "^", "%*%", "*", "%x%", "%&%", "/", "+", "-", ":", "cbind(", "rbind(", "det(", 
                 "tr(", "sum(", "prod(", "max(", "min(", "abs(", "cos(", "cosh(", "sin(", "sinh(", 
                 "tan(", "tanh(", "exp(", "log(", "sqrt(", "vech(", "vechs(", "diag2vec(", "vec2diag(", 
                 "omxMnor(", "omxAllInt(", ":", "%^%", "rvectorize(", "cvectorize(", "eigenvec(", "eigenval(", 
                 "ieigenvec(", "ieigenval(", "omxNot(", "omxSelectRows(", "omxSelectCols(", "omxSelectRowsAndCols(", 
                 "mean(", "omxGreaterThan(", "omxLessThan(", "omxAnd(", "omxOr(", "omxApproxEquals(", "omxExponential(", 
                 "omxExponential(", "chol(", "cov2cor(", "(", ")")
  expr1 <- gsub(" ", "", str, fixed=TRUE)
  for(i in 1:length(mySymbols)){
    expr1 <- gsub(mySymbols[i], ";", expr1, fixed=TRUE)
  }
  elts1 <- unlist(strsplit(expr1, split=";")) 
  elts2 <- elts1[which(elts1 != "")]
  
  # check if the elements in the expression are from the model if not stop and return a message
  holder <- c()
  for(i in 1:length(elts2)){
    if(!(is.numeric(eval(parse(text=elts2[i]))))){
      if(!(elts2[i] %in% modnames)){
        holder <- append(holder, elts2[i])
      }
    }
  }
  
  # if some of the elements in the experession are not from the model return an error message otherwise do the job
  if(length(holder) > 0){
    output <- paste0("ERROR: The element(s) '", paste(holder, collapse="', '"), "' is(are) not from the model '", model, "'!")
  }else{
    myexpr <- paste0("mxEval(expression=",str,",model=", model, ",compute=", compute, ",show=", show, ",defvar.row=", defvar.row, ",cacheBack=", cacheBack, ")")
    library(OpenMx)
    output <- eval(parse(text=myexpr))    
  }

  return(output)
}
