#
# File Name:	Makefile
# Author:	Aditya Ramesh
# Date:		06/27/2012
# Contact:	cheesear@gmail.com
#

tex := pdflatex
texflags := -interaction=errorstopmode -output-directory out -shell-escape
objects := out/pgm_overview_1.pdf out/pgm_overview_2.pdf

.PHONY : all clean redo

all : $(objects)

clean :
	rm -f out/*

redo : all clean

out/pgm_overview_1.pdf : clean
	$(tex) $(texflags) src/pgm_overview_1.tex
	$(tex) $(texflags) src/pgm_overview_1.tex
	cp $@ .

out/pgm_overview_2.pdf : clean
	$(tex) $(texflags) src/pgm_overview_2.tex
	$(tex) $(texflags) src/pgm_overview_2.tex
	cp $@ .
