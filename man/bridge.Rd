\name{bridge}
\alias{bridge}
\title{
Bridge Function to Obtain Normalising Constant
}
\description{
Returns the normalising constant, given posterior model densities, q1(.), normalised densities, q2(.) and their ratios, l(.), from both unnormailised (\code{w1}) and normalised samples (\code{w2}) of parameter values. All three of these input measures can be obtained from each sample using the \code{\link{q1q2l}} function.
}
\usage{
bridge(w1, w2, r0, tol, verbose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w1}{
A \code{data.frame} generated from \code{\link{q1q2l}} using simulations from an unnormalised probability density function. Should have three columns with values named \code{q1} (for the posterior model density function), \code{q2} (for the normalised probability density function) and \code{l} (the ratio of \code{q1} and \code{q2}).
}
  \item{w2}{
A \code{data.frame} generated from \code{\link{q1q2l}} using simulations from an normalised probability density function. Should have three columns with values named \code{q1} (for the posterior model density function), \code{q2} (for the normalised probability density function) and \code{l} (the ratio of \code{q1} and \code{q2}).
}
  \item{r0}{
Starting value for the calculation of the normalising constant.
}
  \item{tol}{
Tolerance level for convergence.
}
  \item{verbose}{
Print sample sizes of \code{w1} and \code{w2} (s_1 and s_2 in Meng and Wong (1996)).
}
}
\details{
Provides an iterative solution to estimate the normalising constant, following equation (4.1) in Meng and Wong (1996). We adapted their equation slightly to deal with overflow (exponentiating large numbers).
}
\value{
See Details.
}
\references{
Abel, G.J., Bijak, J., Forster, J.J., Raymer J., Smith P.W.F. and Wong, J.S.T. (2013) Integrating uncertainty in time series population forecasts: An illustration using a simple projection model. \emph{Demographic Research}. 29 43 1187-1226 doi:10.4054/DemRes.2013.29.43

Meng, X.-L., & Wong, W. H. (1996). Simulating Ratios of Normalizing Constants via a Simple Identity: A Theoretical Exploration. \emph{Statistica Sinica}, 6, 831-860. 
}
\author{
Guy J. Abel
}
\note{
Adaption for overflow based on method suggested by Jon Forster.
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}