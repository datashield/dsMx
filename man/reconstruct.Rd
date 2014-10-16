\name{reconstruct}
\alias{reconstruct}
\title{Recontructs expressions}
\usage{
reconstruct(input)
}
\arguments{
  \item{input}{a string character}
}
\value{
an string charcater with the the 'OpemMx' symbols
}
\description{
This is an internal function.
}
\details{


For security reasons some symbols cannot pass the opal
parser and are hence replaced by characters. This functions
replaces those character strings by their corresponding
'OpenMx' symbols.
}
\keyword{internal}

