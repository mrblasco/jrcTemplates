# R Markdown templates for the Joint Research Centre Documents

# Rendering R markdown files 

Usage within R for a file named paper.Rmd: 

```
library(jrcTemplates)
render_tech_report("paper.Rmd")
```

Alternatively, on the command line: 

```
Rscript -e 'jrcTemplates::render_tech_report("paper.Rmd")'
```

# Install 

```
devtools::install_github("mrblasco/jrcTemplates")
```

# Quick start 

Copy the code below in a R markdown file named paper.Rmd and then render it.


	---
	title: Title of the report
	author: Andrew Bash, Caroline Defou, Ettore Favoni
	front-figure: false
	fontsize: 12pt
	abstract: "Aliquam sed porta justo. Cras molestie turpis a tempus molestie. Etiam ultrices lectus eget ante tristique, nec elementum nibh porttitor. Vestibulum at ex diam. Morbi sodales laoreet felis, id sodales lacus efficitur sed. Integer ut libero pulvinar urna interdum porta nec sit amet augue. Quisque condimentum neque vitae justo vulputate blandit. Aliquam convallis magna sed leo mattis dapibus. Nam cursus magna quam, ut suscipit urna ornare sit amet. Aenean vitae ligula aliquet, rhoncus massa quis, ultrices velit. Vivamus tristique vitae justo nec convallis. Duis pellentesque congue orci, at mattis risus pellentesque egestas. Vivamus laoreet venenatis eros ultrices posuere."
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

## Front figure

To show the front figure, you should replace the `front-figure` variable with the path to an image on your computer (`front-figure: my/path/imagename.jpg`). Some good images can be downloaded from [here](https://unsplash.com/photos/wQLAGv4_OYs). 


