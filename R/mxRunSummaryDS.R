#'
#' @title Generates the summary from the output of an 'mxRun' fit
#' @description This function ensures the summaries returned to user 
#' contain no potentially disclosive information.
#' @details It essentially removes the min and max values from the data 
#' sumamries and delete irrelevant information such as the cpu time.
#' @param input an object of type "MxModel", the ouput of an 'mxRun' fit.
#' @export
#' @author A. Gaye
#' 
mxRunSummaryDS <- function (input){
  # get the overall summary 
  output <- summary(input)
  
  # remove non relevant information
  # idx1 <- which(names(output) %in% c("frontendTime", "backendTime", "independentTime", "wallTime", "cpuTime"))
  # if(length(idx1) > 0){ output <- output[-idx1] }
  
  # remove the min and max values from the summary
  idx2 <- which(names(output) == "dataSummary")
  if(length(idx2) > 0){
    l <- length(output[idx2])
    for(i in 1:l){
      lrw <- dim(output$dataSummary[[i]])[1]
      output$dataSummary[[i]][1,] <- c(rep("Min.   :------  ",2))
      output$dataSummary[[i]][lrw,] <- c(rep("Max.   :------  ",2))
    }
  }
  
  return(output)
}