% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bruceR_multivariate.R
\name{RECODE}
\alias{RECODE}
\title{Recode a variable}
\usage{
RECODE(var, recodes)
}
\arguments{
\item{var}{Variable (numeric vector, character vector, or factor).}

\item{recodes}{Character string: e.g., \code{"lo:1=0; c(2,3)=1; 4=2; 5:hi=3; else=999"}.}
}
\description{
Based on \code{car::\link[car]{recode}}.
}
\examples{
d=data.table(var=c(NA, 0, 1, 2, 3, 4, 5, 6))
d

d[,":="(var.recoded=RECODE(var, "lo:1=0; c(2,3)=1; 4=2; 5:hi=3; else=999"))]
d
}
