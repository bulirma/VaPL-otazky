IN_MD=otazky.md
OUT_PDF=otazky.pdf

.PHONY: typeset live-typeset

typeset: otazky.md
	pandoc -f markdown -t pdf -o $(OUT_PDF) $(IN_MD)

live-typeset: otazky.md
	echo $(IN_MD) | entr pandoc -f markdown -t pdf -o $(OUT_PDF) $(IN_MD)
