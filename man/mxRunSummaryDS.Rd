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
\description{
This function ensures the summaries returned to user
contain no potentially disclosive information.
}
\details{


It essentially removes the min and max values from the data
sumamries and delete irrelevant information such as the cpu
time.
}
\author{
A. Gaye
}

