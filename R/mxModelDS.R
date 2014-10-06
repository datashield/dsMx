#' 
#' @title Creates a new mxModel object
#' @description This function is similar to OpenMx function \code{mxModel}. 
#' @details See details of the OpenMx function 'mxModel' in the package \code{OpenMx}.
#' @param model this argument is either an mxModel object or a string. If 'model' is an 
#' mxModel object, then all elements of that model are placed in the resulting mxModel object. 
#' If 'model' is a string, then a new model is created with the string as its name. If 'model' 
#' is either unspecified or 'model' is a named entity, data source, or MxPath object, then a 
#' new model is created.
#' @param vst a list of character strings, the names of an arbitrary number of mxMatrix, mxPath, 
#' mxData, and other functions such as mxConstraints and mxCI. These will all be added or removed 
#' from the model as specified in the 'model' argument, based on the 'remove' argument.
#' @param manifestVars for RAM-type models, a list of manifest variables to be included in the model.
#' @param latentVars for RAM-type models, A list of latent variables to be included in the model.
#' @param remove logical. If TRUE, elements listed in this statement are removed from the original 
#' model. If FALSE, elements listed in this statement are added to the original model.
#' @param independent  logical. If TRUE then the model is evaluated independently of other models.
#' @param type character vector. The model type to assign to this model. Defaults to options 
#' ("mxDefaultType"). See below for valid types
#' @param name an optional character vector indicating the name of the object.
#' @return a new mxModel object. MxModel objects must include an objective function to be used as 
#' arguments in mxRun functions.
#' @author Gaye, A.
#' @export
#' @references   Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, 
#' Jeffrey Spies, Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras Mehta, and John Fox. (2011) 
#' OpenMx: An Open Source Extended Structural Equation Modeling Framework. Psychometrika. 
#' Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne Estabrook, 
#' Timothy C. Bates, Paras Mehta, Timo von Oertzen, Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian Karch and 
#' Andreas M. Brandmaier. (2012) OpenMx 1.3 User Guide.
#' 
ds.mxModelDS <- function(model=NA, ..., manifestVars, latentVars, remove, independent, type, name){

  # call the OpenMx 'mxData' function
  library(OpenMx)
  mm <- mxModel(model=model, ...)#,manifestVars=manifestVars, latentVars=latentVars, remove=remove, independent=independent, type=type, name=name)

  return(mm)
  
}
