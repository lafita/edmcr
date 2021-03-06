% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/edmc.R
\name{edmc}
\alias{edmc}
\title{Euclidean Distance Matrix Completion}
\usage{
edmc(D, method = "dpf", ...)
}
\arguments{
\item{D}{An nxn partial-distance matrix to be completed, with unkown entries set to NA.}

\item{method}{The algorithm to be used to complete the distance matrix D. One of sdp, npf, dpf, snl, or grs}

\item{...}{The remaining input values required for the completion method specified in \code{method}. See details.}
}
\value{
The return from \code{edmc} depends on the method used. The help pages for each individual method 
can be consulted for specific output.
}
\description{
\code{edmc}
}
\details{
Depending on the method called, a number of input values are possible.
}
\examples{
set.seed(1337)
D <- matrix(c(0,3,4,3,4,3,
             3,0,1,NA,5,NA,
             4,1,0,5,NA,5,
             3,NA,5,0,1,NA,
             4,5,NA,1,0,5,
             3,NA,5,NA,5,0),byrow=TRUE, nrow=6)
             
edmc(D,method = "dpf", d=3, toler=1e-8)

}
\seealso{
\code{\link{sdp}} \code{\link{npf}} \code{\link{dpf}} \code{\link{snl}} \code{\link{grs}}
}
