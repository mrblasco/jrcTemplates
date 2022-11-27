#' Output formats for the JRC reports
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in JRC style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Andrea Blasco
#'
#' @seealso \code{\link{https://github.com/robjhyndman/MonashEBSTemplates}}
#'
#' @export
jrc_tech_report <- function(...) {
	template <- system.file("rmarkdown/templates/report/resources/jrc-tech-report.tex"
		, package = "jrcTemplates")
	bookdown::pdf_document2(..., template=template)
}

#' Render R markdown file for the JRC reports
#'
#' This function is a wrapper for \code{\link[rmarkdown]{render}} to
#' produce documents in JRC technical reports style.
#'
#' @param input path to R markdown file.
#' @param \dots Arguments passed to \code{\link[rmarkdown]{render}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Andrea Blasco
#' @export
render_tech_report <- function(input, ...) {
	skeleton <- system.file("rmarkdown/templates/report/skeleton"
		, package = "jrcTemplates")
	outpath <- file.path(dirname(input), "skeleton")
	dir.create(outpath, showWarnings=FALSE)
	file.copy(from = list.files(skeleton, full=T), to = outpath
		, overwrite=TRUE)	
	out <- rmarkdown::render(input, output_format=jrc_tech_report(), ...)
	unlink(outpath, recursive=TRUE)	
	invisible(out)
}

