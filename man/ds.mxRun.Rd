\name{ds.mxRun}
\alias{ds.mxRun}
\title{Performs the optimization of a model to estimate parameters}
\usage{
ds.mxRun(model, intervals, silent, suppressWarnings, unsafe, checkpoint,
  useSocket, onlyFrontend, useOptimizer)
}
\arguments{
  \item{model}{an mxModel object to be optimized.}

  \item{intervals}{a boolean indicating whether to compute
  the specified confidence intervals.}

  \item{silent}{a boolean indicating whether to print
  status to terminal.}

  \item{suppressWarnings}{a boolean indicating whether to
  suppress warnings.}

  \item{unsafe}{a boolean indicating whether to ignore
  errors.}

  \item{checkpoint}{a boolean indicating whether to
  periodically write parameter values to a file.}

  \item{useSocket}{a boolean indicating whether to
  periodically write parameter values to a socket.}

  \item{onlyFrontend}{a boolean indicating whether to run
  only front-end model transformations.}

  \item{useOptimizer}{a boolean indicating whether to run
  only the log-likelihood of the current free parameter
  values but not move any of the free parameters.}
}
\description{
This function is similar to OpenMx function \code{mxRun}.
}
\details{


See details of the OpenMx function 'mxRun' in the package
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

