\name{mxAlgebraDS}
\alias{mxAlgebraDS}
\title{Runs 'mxAlgebra'}
\usage{
mxAlgebraDS(expr, name = NA, dimnames = NA)
}
\arguments{
  \item{expr}{a list which contains the objects to carry
  out a caluclation for and the algebraic operator or null
  if no operator symbol is required.}

  \item{name}{an optional character string indicating the
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
that it provides a workaround to the difficulty of
loading/and/or using omxSymbolTable from the client side
}
\details{

}
\author{
A. Gaye
}

