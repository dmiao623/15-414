# ---------------------------------------------------------
# type "make" command in Unix to create the asst1.zip file
# ---------------------------------------------------------

handin:
	zip -r asst0.zip mystery3.mlw mystery3

handout:
	pdflatex asst0 ; pdflatex asst0
	zip -r asst0.zip Makefile asst0.pdf mystery3.mlw
	mv asst0.zip ../../www/assignments/
	cp -p asst0.pdf ../../www/assignments/

clean:
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc *.synctex.gz)


