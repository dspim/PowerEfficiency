all : README.html
	make -C power

%.html : %.md
	Rscript -e "library(markdown);markdownToHTML('$<','$@', header = 'html/header.html')"

%.md : %.Rmd
	Rscript -e "library(knitr);knit('$<', '$@')"
	make -C power

clean:
	-rm *.html
	make -C power clean
