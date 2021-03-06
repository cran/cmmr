% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_search.R
\name{batch_search}
\alias{batch_search}
\title{Encapsulation of CEU Mass Mediator batch search API}
\usage{

  batch_search(cmm_url = "http://ceumass.eps.uspceu.es/mediator/api/v3/batch",
  metabolites_type = "all-except-peptides",
  databases = "[\\"all-except-mine\\"]", masses_mode = "mz",
  ion_mode = "positive", adducts = "[\\"M+H\\",\\"M+Na\\"]",
  tolerance = 10, tolerance_mode = "ppm", unique_mz)
}
\arguments{
\item{cmm_url}{'http://ceumass.eps.uspceu.es/mediator/api/v3/batch' or your local API Endpoint}

\item{metabolites_type}{"all-except-peptides", "only-lipids", "all-including-peptides"}

\item{databases}{"all", "all-except-mine", "HMDB", "LipidMaps", "Metlin", "Kegg", "in-house", "mine"}

\item{masses_mode}{"neutral", "mz"}

\item{ion_mode}{"positive", "negative"}

\item{adducts}{for positive mode [M+H, M+2H, M+Na, M+K,M+NH4, M+H-H2O]}

\item{tolerance}{double (Range: [0..100])}

\item{tolerance_mode}{"ppm", "mDa"}

\item{unique_mz}{An array of unique m/zs}
}
\value{
dataframe for search results
}
\description{
\code{batch_search} returns the dataframe of all the database search results.
  using the following code to install the dependencies:
  install.packages(c("httr", "progress", "RJSONIO"))
}
\examples{



\dontrun{
batch_search(c(670.4623, 1125.2555, 602.6180))
}
}
\author{
Yaoxiang Li \email{yl814@georgetown.edu}

Georgetown University, USA

License: GPL (>= 3)
}
