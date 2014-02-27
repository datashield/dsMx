\name{mxAlgebra}
\alias{mxAlgebra}
\title{loads 'omxSymbolTable' and runs 'mxAlgebra'}
\usage{
mxAlgebra(expression, name = NA, dimnames = NA)
}
\arguments{
  \item{expression}{An R expression of OpenMx-supported
  matrix operators and matrix functions.}

  \item{name}{An optional character string indicating the
  name of the object.}

  \item{dimnames}{list, the dimnames attribute for the
  algebra: a list of length 2 giving the row and column
  names respectively. An empty list is treated as NULL, and
  a list of length one as row names. The list can be named,
  and the list names will be used as names for the
  dimensions.}
}
\description{
this is exactly the same as the function in 'OpenMx' except
for the fact that it load 'omxSymbolTable'.
}
\details{

}

