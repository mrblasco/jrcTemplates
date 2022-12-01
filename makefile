template :=$(HOME)/code/jrc/jrcTemplates/inst/rmarkdown/templates/report/resources/jrc-tech-report.tex


document:
	Rscript -e 'devtools::document()'

install:
	Rscript -e 'devtools::install()'

test: inst/doc/report.Rmd
	Rscript -e 'jrcTemplates::render_tech_report("$<")'

inst/doc/%.pdf : inst/doc/%.md
	pandoc -o $@ $< --template=$(template)

inst/doc/report.pdf : inst/doc/report.Rmd $(template)
	Rscript -e 'rmarkdown::render("$<", output_format=rmarkdown::pdf_document(template="$(template)"))'




