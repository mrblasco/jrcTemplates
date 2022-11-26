

document:
	Rscript -e 'devtools::document()'

install:
	Rscript -e 'devtools::install()'

test:
	Rscript -e 'jrcTemplates::render_tech_report("inst/doc/report.Rmd")'
