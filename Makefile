dvi:
	latex v_w
	bibtex v_w
	latex v_w
	latex v_w
	dvips -Ppdf  v_w.dvi
	ps2pdf v_w.ps v_w_dvi.pdf
	acroread v_w_dvi.pdf &

pdf:
	pdflatex v_w
	bibtex v_w
	pdflatex v_w
	pdflatex v_w
	acroread v_w.pdf &

clean:
	rm -f *.bbl *.blg *.aux *.fgx *.log *.tbx *.out *.pdf *.ps