\name{h.fit}
\alias{h.fit}
\title{
Fitted Volatility Series from Simulated Parameters
}
\description{
Returns fitted volatility series for each set of simulated parameter values used in the calculation of the log-likelihood. Will only operate for simulations from BUGS models with either stochastic volatility or a random variance shift created in the tsbugs package. 
}
\usage{
h.fit(bug, sims, pre.beg = FALSE)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{pre.beg}{
Logical value to include or exclude \code{NA} outputs in time periods (columns) before the starting value for which data are considered in the likelihood of the BUGS model. The number of columns will be dependent on the value of the \code{bug} argument used when setting up the BUGS model using the tsbugs package. By default this argument is \code{FALSE}, i.e. there are no columns of missing values returned.
}
}
\value{
A \code{data.frame} where rows represent simulations and columns time.
}
\author{
Guy J. Abel
}
\seealso{
\code{\link{y.fit}}, \code{\link{tslogl}}
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}