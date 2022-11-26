template :=/Users/mrb/code/jrc/jrcTemplates/inst/rmarkdown/templates/report/resources/jrc-tech-report.tex

inst/doc/report.pdf : inst/doc/report.Rmd $(template)
	Rscript -e 'rmarkdown::render("$<", output_format=rmarkdown::pdf_document(template="$(template)"))'


document:
	Rscript -e 'devtools::document()'

install:
	Rscript -e 'devtools::install()'



