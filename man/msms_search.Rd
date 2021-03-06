% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msms_search.R
\name{msms_search}
\alias{msms_search}
\title{Encapsulation of CEU Mass Mediator batch search API.}
\usage{
msms_search(ion_mass, ms_ms_peaks, precursor_ion_tolerance = 100,
  precursor_ion_tolerance_mode = "mDa", precursor_mz_tolerance = 500,
  precursor_mz_tolerance_mode = "mDa", ion_mode,
  ionizationVoltage = "all", spectra_types = "experimental",
  cmm_url = "http://ceumass.eps.uspceu.es/mediator/api/msmssearch")
}
\arguments{
\item{ion_mass}{ion_mass}

\item{ms_ms_peaks}{ms_ms_peaks}

\item{precursor_ion_tolerance}{precursor_ion_tolerance}

\item{precursor_ion_tolerance_mode}{precursor_ion_tolerance_mode}

\item{precursor_mz_tolerance}{precursor_mz_tolerance}

\item{precursor_mz_tolerance_mode}{precursor_mz_tolerance_mode}

\item{ion_mode}{ion_mode}

\item{ionizationVoltage}{ionizationVoltage}

\item{spectra_types}{spectra_types}

\item{cmm_url}{"http://ceumass.eps.uspceu.es/mediator/api/msmssearch" or your local one}
}
\value{
If all inputs are all correctly formatted, a dataframe will be returned for the result.
}
\description{
\code{batch_search} returns the dataframe of all the database search results.
  using the following code to install the dependencies:
  install.packages(c("httr", "progress", "RJSONIO"))
}
\examples{
ms_ms_peaks = matrix(
c(40.948, 0.174,
  56.022, 0.424,
  84.37, 53.488,
  101.50, 8.285,
  102.401, 0.775,
  129.670, 100.000,
  146.966, 20.070),
ncol = 2,
byrow = TRUE)

msms_search(ion_mass = 147, ms_ms_peaks = ms_ms_peaks, ion_mode = 'positive')

}
\author{
Yaoxiang Li \email{yl814@georgetown.edu}

Georgetown University, USA

License: GPL (>= 3)
}
