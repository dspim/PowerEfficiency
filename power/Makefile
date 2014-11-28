RMD:=$(wildcard *.Rmd)
HTML:=$(RMD:.Rmd=.html)

all : $(HTML)

%.html : %.md
	mv $< $@
	#Rscript -e "library(markdown);markdownToHTML('$<', '$@')"

%.md : %.Rmd
	Rscript -e "library(knitr);knit('$<', '$@')"

clean : 
	-rm *.html *.md
