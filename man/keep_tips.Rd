% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keep_tips.r
\name{keep_tips}
\alias{keep_tips}
\alias{keep_tips.phylo}
\alias{keep_tips.multiPhylo}
\alias{keep_tips.rankedPhylo}
\title{Prune a tree}
\usage{
keep_tips(x, tips)

\method{keep_tips}{phylo}(x, tips)

\method{keep_tips}{multiPhylo}(x, tips)

\method{keep_tips}{rankedPhylo}(x, tips)
}
\arguments{
\item{x}{a tree of class "phylo" or "multiPhylo"}

\item{tips}{tip labels to keep}
}
\value{
a pruned tree or a collection
}
\description{
Prune a tree or a collection of trees and keep only requested tips.
}
\examples{
tree = rankedPhylo(5)
# select randomly 3 tips to keep
tips = sample(tips(tree), 3)
keep_tips(tree, tips)

trees = rankedPhylo(3:7)
# get tips from the first tree
tips = tips(trees[[1]])
# prune all trees, all of them will have 3 tips
keep_tips(trees, tips)

}
