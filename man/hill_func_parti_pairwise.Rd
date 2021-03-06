% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hill_func_parti_pairwise.R
\name{hill_func_parti_pairwise}
\alias{hill_func_parti_pairwise}
\title{\code{hill_func_parti_pairwise} to calculate pairwise functional gamma, alpha, and beta diversity for communities, as
 well as site DISsimilarity. It is based on \code{\link{hill_func_parti}}. If comm has >2 sites, this function will give results for all
 pairwise comparisons.}
\usage{
hill_func_parti_pairwise(comm, traits, traits_as_is = FALSE, q = 0,
  rel_then_pool = TRUE, output = c("data.frame", "matrix"),
  pairs = c("unique", "full"))
}
\arguments{
\item{comm}{data frame of vegtation data. Sites as rows, species as columns.}

\item{traits}{data frame of species functional traits data. Species as rows, traits as columns.
It can include both continuous and categorical data.}

\item{traits_as_is}{if FALSE (default) traits data frame will be transformed into a distance
matrix using `FD::gowdis(traits)`. Otherwise, will use as is (i.e. traits is a symmetric distance matrix).}

\item{q}{hill number, q = 0 (default) to get species richness, q = 1 to get shannon entropy, q = 2 will give inverse Simpson.}

\item{rel_then_pool}{default is TRUE. Abundance of species are first changed to relative abundance within sites,
then pooled into one assemblage. If FALSE, sites are pooled first, then change abundance of species
to relative abundance.}

\item{output}{output type: data.frame (default) or matrix. If matrix, then this function will return a list of matrices.}

\item{pairs}{full or unique (default). Do you want to compare all possible pairs (i.e. n^2) or just unique pairs (i.e. choose(n, 2))?}
}
\value{
a data frame with results for all pairwise comparisons.
}
\description{
\code{hill_func_parti_pairwise} to calculate pairwise functional gamma, alpha, and beta diversity for communities, as
 well as site DISsimilarity. It is based on \code{\link{hill_func_parti}}. If comm has >2 sites, this function will give results for all
 pairwise comparisons.
}
\examples{
library(FD); data(dummy)
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 0)
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 0, output = "matrix")
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 0, output = "matrix", pairs = "full")
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 1)
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 0.9999)
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 2)
hill_func_parti_pairwise(comm = dummy$abun, traits = dummy$trait, q = 3)


}
\author{
Daijiang Li
}
\seealso{
\code{\link{hill_func_parti}}
}

