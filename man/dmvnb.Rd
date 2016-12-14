\name{dmvnb}
\alias{dmvnb}
\title{
Density Function for Multivariate Normal-Binary Distribution for Use With RV-Shift Models
}
\description{
This function is intended for internal use only. It calculates the density function of a mixed multivariate normal-binary distribution for use in the \code{\link{q1q2l}}.
}
\usage{
dmvnb(bug, sims, MU, COV, P)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{MU}{
A vector of the mean parameter values (over a simulated data set)
}
  \item{COV}{
A matrix of parameter variance-covariances (over a simulated data set)
}
  \item{P}{
A \code{data.frame} of model fits for each binary parameter, used in the simulation of equivalent parameters from a normalised density. Rows represent simulation number, and columns binary parameters.
}
}
\author{
Guy J. Abel and Jackie Wong Siaw Tze
}
\note{
Function based on method suggested by Jon Forster.
}
