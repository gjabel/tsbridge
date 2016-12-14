\name{rescale}
\alias{rescale}
\title{
Rescale Values to and from Whole Real Number Line
}
\description{
Returns simulated parameters with transformations to or from the real whole number line. Parameters to transform are dependent on their specification of their prior distributions in the BUGS model.
}
\usage{
rescale(bug, sims, to.real = NULL)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{to.real}{
Set to \code{TRUE} or \code{FALSE} to indicate if parameters need to be scaled to the real number line or reversed scaled from the real number line back to their original parameter space.
}
}
\details{
For parameters from a Gamma prior distributions in a BUGS model, a logarithmic transformation is used to convert values onto the real number line \code{to.real=TRUE} and the exponential transformation to convert vales back to their original parameter space \code{to.real=FALSE} 

For parameters from Uniform and Beta prior distributions in a BUGS model, a reverse-logistic transformation is used to convert values onto the real number line \code{to.real=TRUE} and a logistic transformation to convert vales back to their original parameter space \code{to.real=FALSE}.

This function was written with the intention of reducing code when in calculating the normalising constant, in particular when 1) finding the appropiate summary statistics to simulate a candidate normalised distribution from and 2) transforming simulated values to the same scales as the orginal MCMC simulations for later use.
}
\value{
A \code{data.frame} with the same dimensions as the \code{sims} argument.
}
\author{
Guy J. Abel
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}
