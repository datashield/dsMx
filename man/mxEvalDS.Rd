\name{mxEvalDS}
\alias{mxEvalDS}
\title{Evaluates values in an mxModel}
\usage{
mxEvalDS(expression, model, compute, show, defvar.row, cacheBack)
}
\arguments{
  \item{expression}{an arbitrary R expression.}

  \item{model}{the model in which to evaluate the
  expression.}

  \item{compute}{if TRUE then compute the value of algebra
  expressions.}

  \item{show}{if TRUE then print the translated
  expression.}

  \item{defvar.row}{The row number for definition variables
  when compute=TRUE.}

  \item{cacheBack}{if TRUE then return the list pair
  (value, cache).}
}
\value{
the evaluation of an expression
}
\description{
This function is similar to OpenMx function \code{mxModel}.
}
\details{


See details of the OpenMx function 'mxModel' in the package
\code{OpenMx}.
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

