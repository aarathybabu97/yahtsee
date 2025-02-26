% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prediction-data.R
\name{prediction_data}
\alias{prediction_data}
\title{Create prediction data}
\usage{
prediction_data(model_data, key, index, ...)
}
\arguments{
\item{model_data}{data used in the model}

\item{key}{new key}

\item{index}{new index}

\item{...}{any other variables you want to create an example dataset of}
}
\value{
\code{tsibble} object with the same index and key as \code{model_data}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
}
\details{
Create prediction data that has the same index and key as the model data
for use in prediction.
}
\examples{
date_range <- clock::date_build(2019, 2, 1:5)
date_range
countries <- c("Ethiopia", "Tanzania")
countries
prediction_data(
  model_data = malaria_africa_ts,
  key = countries,
  index = date_range
 )
}
