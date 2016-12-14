\name{dcvts}
\alias{dcvts}
\alias{dsvts}
\alias{drvts}
\title{
Posterior Density of Constant Variance, Stochastic Volatility and Random Variance Shift Time Series Model.
}
\description{
This function is intended for internal use only. It calculates the posterior density of a constant variance, stochastic volatility or random variance shift time series model given a set of sample of parameter values.
}
\usage{
dcvts(bug, sims, ymean, hmean = NULL, iter = NULL)
dsvts(bug, sims, ymean, hmean = NULL, iter = NULL)
drvts(bug, sims, ymean, hmean = NULL, iter = NULL)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{ymean}{
A \code{data.frame} of mean values for response y, the fitted mean process. Columns represent time and rows represent simulations.
}
  \item{hmean}{
A \code{data.frame} of mean values for h, the fitted volatility process. Columns represent time and rows represent simulations. This argument is not used for \code{dcvts}.
}
  \item{iter}{
Prints the contributions of each iteration (simulation) number to the density calculation. By default is set to \code{NULL}, hence no values are printed.
}
}
\author{
Guy J. Abel and Jackie Wong Siaw Tze
}
\seealso{
\code{\link{q1q2l}}
}

