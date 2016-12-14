\name{y.fit}
\alias{y.fit}
\title{
Fitted Time Series from Simulated Parameters
}
\description{
Returns fitted time series for each set of simulated parameter values used in the calculation of the log-likelihood. 
}
\usage{
y.fit(bug, sims, ysim = NULL, pre.beg = FALSE)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{ysim}{
A \code{data.frame} of simulated y values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{pre.beg}{
Logical value to include or exclude \code{NA} outputs in time periods (columns) before the starting value for which data are considered in the likelihood of the BUGS model. The number of columns will be dependent on the value of the \code{bug} argument used when setting up the BUGS model using the tsbugs package. By default this argument is \code{FALSE}, i.e. there are no columns of missing values returned.
}
}
\details{
Returns mean series for each set of simulated parameter values. When y, the observed time series contains missing values, users need to supply a data frame of simulated y values for \code{ysim}. This will allow the calculation of mean values for $y$ in the presence of missing data.
}
\value{
A \code{data.frame} where rows are simulations and columns are time.
}
\author{
Guy J. Abel
}
\note{
The suggestion of the use of \code{ysim} to account for missing values was taken from discussion on Cross Validated: 
\url{http://stats.stackexchange.com/questions/47877/calculating-the-likelihood-of-time-series-data-when-there-are-missing-data}
}
\seealso{
\code{\link{h.fit}}, \code{\link{tslogl}}
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}