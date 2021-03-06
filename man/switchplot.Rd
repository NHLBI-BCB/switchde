% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/switchde.R
\name{switchplot}
\alias{switchplot}
\title{Plot gene behaviour}
\usage{
switchplot(x, pseudotime, pars)
}
\arguments{
\item{x}{Gene expression vector}

\item{pseudotime}{Pseudotime vector (of same length as x)}

\item{pars}{Fitted model parameters}
}
\value{
A \code{ggplot2} plot of gene expression and MLE sigmoid
}
\description{
Plot gene behaviour and MLE sigmoid as a function of pseudotime.
}
\details{
This plots expression of a single gene. Fitted model parameters can
either be specified manually or can be extracted from the \code{data.frame} returned
by \code{switchde} using the function \code{extract_pars}.
}
\examples{
data(synth_gex)
data(ex_pseudotime)
sde <- switchde(synth_gex, ex_pseudotime)
switchplot(synth_gex[1, ], ex_pseudotime, extract_pars(sde, "Gene1"))
}

