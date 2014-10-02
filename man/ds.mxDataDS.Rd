\name{ds.mxDataDS}
\alias{ds.mxDataDS}
\title{Creates a new MxData object}
\usage{
ds.mxDataDS(observed, type, means, numObs)
}
\arguments{
  \item{observed}{a string, the name of a matrix or
  data.frame which provides data to the MxData object.}

  \item{type}{A character string defining the type of data
  in the 'observed' argument. Must be one of "raw", "cov",
  "cor", or "sscp".}

  \item{means}{An optional vector of means for use when
  'type' is "cov", or "cor".}

  \item{numObs}{The number of observations in the data
  supplied in the 'observed' argument. Required unless
  'type' equals "raw".}
}
\value{
a new mxData object, which consists of a 'values' matrix of
numeric starting values, a 'free' matrix describing free
parameter specification, a 'labels' matrix of labels for
the variable names, and 'lbound' and 'ubound' matrices of
the lower and upper parameter bounds.
}
\description{
This function is similar to OpenMx function \code{mxData}.
}
\details{


If the data frame created has a number of observation
(rows) less than the allowed threshold an empty data frame
is is returned.
}
\examples{
{

}
}
\author{
Gaye, A.
}
\references{
Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael
J. Wilde, Michael Spiegel, Timothy R. Brick, Jeffrey Spies,
Ryne Estabrook, Sarah Kenny, Timothy C., Bates, Paras
Mehta, and John Fox. (2011) OpenMx: An Open Source Extended
Structural Equation Modeling Framework. Psychometrika.
Steven M. Boker, Michael C. Neale, Hermine H. Maes, Michael
J. Wilde, Michael Spiegel, Timothy R. Brick, Ryne
Estabrook, Timothy C. Bates, Paras Mehta, Timo von Oertzen,
Ross J. Gore, Michael D. Hunter, Daniel C. Hackett, Julian
Karch and Andreas M. Brandmaier. (2012) OpenMx 1.3 User
Guide.
}

