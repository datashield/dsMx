#' 
#' @title Recontructs expressions 
#' @description This is an internal function.
#' @details For security reasons some symbols cannot pass the opal parser and are hence replaced by 
#' characters. This functions replaces those character strings by their corresponding 'OpenMx' symbols.
#' @param input a string character
#' @keywords internal
#' @return an string charcater with the the 'OpemMx' symbols
#'
reconstruct <- function(input){
  symbols <- c("^", "%*%", "*", "%x%", "%&%", "/", "+", "-", ":", "%^%", "(", ")")
  characters <- c("HAT", "PERCASTERIX", "ASTERIX", "PERCX", "PERCADD", "SLASH", "PLUS", "MINUS", "COLON", "PERCHAT", "OBR", "CBR")
  output <- input
  for(i in 1:length(symbols)){
    output <- gsub(characters[i], symbols[i], output)
  }
  return(output)
}