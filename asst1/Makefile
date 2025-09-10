# ---------------------------------------------------------
# type "make" command in Unix to create the asst1.zip file
# ---------------------------------------------------------

handin:
	zip -r asst1.zip fact.mlw fact intset.mlw intset prefix.mlw prefix

handout:
	pdflatex asst1 ; pdflatex asst1
	zip -r asst1.zip Makefile asst1.pdf fact.mlw intset.mlw prefix.mlw
	mv asst1.zip asst1.pdf ../../www/assignments/

clean:
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc)


