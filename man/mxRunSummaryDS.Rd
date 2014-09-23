\name{mxRunSummaryDS}
\alias{mxRunSummaryDS}
\title{Generates the summary from the output of an 'mxRun' fit}
\usage{
mxRunSummaryDS(input)
}
\arguments{
  \item{input}{an object of type "MxModel", the ouput of an
  'mxRun' fit.}
}
\value{
a list that holds the summary items.
}
\description{
This function ensures the summaries returned to user
contain no potentially disclosive information.
}
\details{


It essentially removes the min and max values from the
summaries and store the summary items in a list that is
returned.
}
\author{
A. Gaye
}

