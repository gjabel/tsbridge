\name{theta.it}
\alias{theta.it}
\title{
Convert Parameter Data Frame to List
}
\description{
This function is intended for internal use only. It collates the parameters for a single model into one \code{list}, given the BUGS model and the paramter simulations in a data frame. 
}
\usage{
theta.it(bug, sims, max.phi = 8, max.psi = 1)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{max.phi}{
Maximum number of \code{phi} autoregressive parameters in the mean structure.
}
  \item{max.psi}{
Maximum number of \code{psi} autoregressive parameters in the variance structure. Will be ignored if \code{bug} is not a stochastic volatility model.
}
}
\details{
Returns model parameters as a list for easy manipulation in other functions.
}
\author{
Guy J. Abel
}
