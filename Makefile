#
# File Name:	Makefile
# Author:	Aditya Ramesh
# Date:		06/27/2012
# Contact:	cheesear@gmail.com
#

tex      = pdflatex
texflags = -interaction=errorstopmode -output-directory out -shell-escape
objects  = out/pgm_overview_1.pdf out/pgm_overview_2.pdf

.PHONY : all clean redo

all : $(objects)
	@for i in $$(ls 'out'); do \
		if [[ $$i != *.pdf ]]; then \
			rm out/$$i; \
		fi; \
	done;

clean :
	rm -rf out/*

%.pdf :
	$(tex) $(texflags) src/$(*F).tex
	$(tex) $(texflags) src/$(*F).tex
