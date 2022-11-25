# R Markdown templates for the Joint Research Centre

Usage within R for a file named paper.Rmd: 

```
rmarkdown::render("paper.Rmd", output_format=jrcTemplates::report())
```

Alternatively, on the command line: 

```
Rscript -e 'rmarkdown::render("paper.Rmd", output_format=jrcTemplates::report())'
```

# Install 

```
devtools::install_github("mrblasco/jrcTemplates")
```

