aula.pdf: aula.tex
	latexmk -pdf $<
clean: 	
	latexmk -c $<
	rm aula.pdf

view: aula.pdf
	nohup atril $< &> /dev/null &
