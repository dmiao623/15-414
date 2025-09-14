# -------------------------------------------------------------------
# type "make" command in Unix to create the asst2.zip file to hand in
# -------------------------------------------------------------------

handin:
	zip -r asst2.zip ternary.mlw ternary/
	@echo "Don't forget to submit asst2.pdf separately to Gradescope!"

handout:
	pdflatex asst2 ; pdflatex asst2
	zip -r asst2.zip Makefile asst2.pdf asst2.tex lecnotes.sty hw.sty ternary.mlw
	mv asst2.zip asst2.pdf ../../www/assignments/

clean:
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc *.synctex.gz)

