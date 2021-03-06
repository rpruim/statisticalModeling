% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap_ensemble.R
\name{ensemble}
\alias{ensemble}
\title{Create bootstrapped ensembles  of a model}
\usage{
ensemble(mod, nreps = 2, data = NULL)
}
\arguments{
\item{mod}{a model whose data will be used for resampling}

\item{nreps}{how many resampling trials should be created}

\item{data}{a data table to use for resampling. This is not needed for many common
model types, such as \code{lm}, \code{glm}, etc. See details.}
}
\description{
Create bootstrapped ensembles  of a model
}
\details{
The approach to bootstrapping implemented by this function is to create a set of bootstrap
trials all in one go. Then, other functions such as \code{effect_size} and \code{evaluate_model()} will be 
used to extract the information from each of the bootstrap replicates. Many model types in R carry the
data used to train the model as part of the model object produced. For these types of models, e.g. \code{lm} and 
\code{glm}, there is no need to provide a value for the \code{data} argument. But there are some 
types of models for which the training data cannot be extracted from the model object. In such situations, 
you use \code{data =} to provide the data set to use for resampling.
}
