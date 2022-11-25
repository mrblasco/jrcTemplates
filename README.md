# R Markdown templates for the Joint Research Centre Documents

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

# Example 

Copy the code below in a R markdown file and render it. 


	---
	title: Title of the report
	author: Andrew Bash, Caroline Defou, Ettore Favoni
	papersize: a4
	bibliography: 
	front-figure: 
	fontsize: 12pt
	abstract: "TBA"
	date: 2022
	foreword: "Nec elementum nibh porttitor. Vestibulum at ex diam. Morbi sodales laoreet felis."
	--- 

	# Introduction 

	Aliquam sed porta justo. Cras molestie turpis a tempus molestie. Etiam ultrices lectus eget ante tristique, nec elementum nibh porttitor. Vestibulum at ex diam. Morbi sodales laoreet felis, id sodales lacus efficitur sed. Integer ut libero pulvinar urna interdum porta nec sit amet augue. Quisque condimentum neque vitae justo vulputate blandit. Aliquam convallis magna sed leo mattis dapibus. Nam cursus magna quam, ut suscipit urna ornare sit amet. Aenean vitae ligula aliquet, rhoncus massa quis, ultrices velit. Vivamus tristique vitae justo nec convallis. Duis pellentesque congue orci, at mattis risus pellentesque egestas. Vivamus laoreet venenatis eros ultrices posuere.

	```{r}
	x <- runif(100)
	y <- rnorm(x, mean = x)
	plot(x, y)
	```
