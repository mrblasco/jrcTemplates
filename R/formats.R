#' Output formats for the JRC reportss
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

report <- function(...) {
	template <- system.file("rmarkdown/templates/report/resources/jrc-tech-report.tex", package = "jrcTemplates")
	skeleton <- system.file("rmarkdown/templates/report/skeleton", package = "jrcTemplates")
	dir.create("skeleton", showWarnings=FALSE)
	file.copy(from = list.files(skeleton, full=T), to = 'skeleton', overwrite=TRUE)
	bookdown::pdf_document2(..., template=template)
}
