% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formats.R
\name{render_tech_report}
\alias{render_tech_report}
\title{Render R markdown file for the JRC reports}
\usage{
render_tech_report(input, ...)
}
\arguments{
\item{input}{path to R markdown file.}

\item{\dots}{Arguments passed to \code{\link[rmarkdown]{render}}.}
}
\value{
An R Markdown output format object.
}
\description{
This function is a wrapper for \code{\link[rmarkdown]{render}} to
produce documents in JRC technical reports style.
}
\author{
Andrea Blasco
}
