\name{tslogl}
\alias{tslogl}
\title{
Log-Likelihood of Time Series Model.
}
\description{
This function is intended for internal use only. It calculates the log-likelihood function of a time series of normally distributed data for use in the \code{\link{q1q2l}} (via \code{\link{dcvts}}, \code{\link{dsvts}} or \code{\link{drvts}})
}
\usage{
tslogl(bug, ymean, sigma)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{ymean}{
Mean value of y over time for each set of simulated parameter values.
}
  \item{sigma}{
Standard deviation of y over time for each set of simulated parameter values.
}
}
\author{
Guy J. Abel
}
\seealso{
\code{\link{q1q2l}}, \code{\link{dcvts}}, \code{\link{dsvts}},\code{\link{drvts}}
}

