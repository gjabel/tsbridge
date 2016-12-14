\name{tsbridge-package}
\alias{tsbridge-package}
\alias{tsbridge}
\docType{package}
\title{
Calculated normalising constants for Bayesian time series models
}
\description{
The tsbridge package contains a collection of R functions that can be used to estimate normalising constants using the bridge sampler of Meng and Wong (1996). The functions can be applied to calculate posterior model probabilities for a variety of time series Bayesian models, where parameters are estimated using BUGS, and models themselves are created using the tsbugs package.
}
\details{
\tabular{ll}{
Package: \tab tsbridge\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-10-07\cr
License: \tab GPL-2\cr
}
}
\author{
Guy J. Abel and Jackie S. T. Wong

Maintainer: Guy J. Abel <g.j.abel@gmail.com>
}
\references{
Abel, G.J., Bijak, J., Forster, J.J., Raymer J., Smith P.W.F. and Wong, J.S.T. (2013) Integrating uncertainty in time series population forecasts: An illustration using a simple projection model. \emph{Demographic Research}. 29 43 1187-1226 doi:10.4054/DemRes.2013.29.43

Meng, X.-L., & Wong, W. H. (1996). Simulating Ratios of Normalizing Constants via a Simple Identity: A Theoretical Exploration. \emph{Statistica Sinica}, 6, 831-860. 

Blog posts with some additional details of the implementation of functions in the package can be found at:
\url{http://gjabel.wordpress.com/category/r/tsbridge/} 
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}
