\name{q1q2l}
\alias{q1q2l}
\title{
Calculate Posterior Model Density, q1(.), Normalised Density, q2(.), and their Ratio, l(.)
}
\description{
Calculates the posterior model density, q1(.), normalised density, q2(.), and their ratio, l(.), for a set of simulated parameters.
}
\usage{
q1q2l(bug, sims, ymean, hmean = NULL, MU, COV, P = NULL)
}
\arguments{
  \item{bug}{
A BUGS model created in the tsbugs package.
}
  \item{sims}{
A \code{data.frame} of simulated parameter values with column names labelled according to output from the R2OpenBUGS package.
}
  \item{ymean}{
A \code{data.frame} of mean values for $y$, the fitted mean process. Columns represent time and rows represent simulations.
}
  \item{hmean}{
A \code{data.frame} of mean values for $h$, the fitted volatility process. Columns represent time and rows represent simulations. This argument is not used.
}
  \item{MU}{
A vector of the mean parameter values (over a simulated data set)
}
  \item{COV}{
A matrix of parameter variance-covariances (over a simulated data set)
}
  \item{P}{
A \code{data.frame} of model fits for each binary parameter, used in the simulation of equivalent parameters from a normalised density. Rows represent simulation number, and columns binary parameters. Only necessary for random variance shift models.
}
}
\details{
Returns a \code{data.frame} with three columns. The first column returns q1(.), the second q2(.) and third l(.) for a given set of simulations. Will only operate for simulations from BUGS models with either constant variance, stochastic volatility or a random variance shift created in the tsbugs package. This function is intended to be run twice in order to obtain 1) q1(w1) and q2(w1) based on a unnormalised MCMC simulation (w1) and 2) q1(w2) and q2(w2) based on a simulations from a normalised density (w2). 

Values of \code{q1} are based on posterior model densities calculated in either the \code{\link{dcvts}}, \code{\link{dsvts}} or \code{\link{drvts}}. Values of \code{q2} are based on densities of a multivariate normal distribution (using \code{MU} and \code{COV} in the \code{\link{dmvnorm}} function of the \code{mvtnorm} package) when the BUGS model (\code{bug}) has a constant variance or stochastic volatility component. When BUGS model has a random variance shift component, the \code{q2} density is estimated using the \code{\link{dmvnb}} function. 

The \code{data.frame} outputs can be directly used as input into the \code{\link{bridge}} function to obtain estimates of normalising constants.
}
\value{
A \code{data.frame} with columns:
 \item{q1 }{Unnormalised Density.}
 \item{q2 }{Normalised Density.}
 \item{l  }{Ratio of \code{q1} and \code{q2}.}
}
\references{
Abel, G.J., Bijak, J., Forster, J.J., Raymer J., Smith P.W.F. and Wong, J.S.T. (2013) Integrating uncertainty in time series population forecasts: An illustration using a simple projection model. \emph{Demographic Research}. 29 43 1187-1226 doi:10.4054/DemRes.2013.29.43

Alan Genz, Frank Bretz, Tetsuhisa Miwa, Xuefei Mi, Friedrich Leisch, Fabian Scheipl, Torsten Hothorn (2012). mvtnorm: Multivariate Normal
and t Distributions. R package version 0.9-9994. http://CRAN.R-project.org/package=mvtnorm

Meng, X.-L., & Wong, W. H. (1996). Simulating Ratios of Normalizing Constants via a Simple Identity: A Theoretical Exploration. \emph{Statistica Sinica}, 6, 831-860. 
}
\author{
Guy J. Abel
}
\seealso{
 \code{\link{dcvts}}, \code{\link{dsvts}}, \code{\link{drvts}}, \code{\link{dmvnb}}, \code{\link{dmvnorm}}, \code{\link{bridge}} 
}
\examples{
\dontrun{
# demo example with constant variance models for differenced growth rate
# of England and Wales population as used in Abel et. al. (2013)
demo("cv_bma", "tsbridge")
}
}
