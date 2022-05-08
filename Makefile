export PATH := $(PATH):/Library/TeX/texbin

default:
	rm -rf exports/rustwannabe.pdf
	pandoc ./src/*.md \
	--pdf-engine=xelatex \
	-V mainfont="Avenir Next" \
	-V colorlinks \
	-V urlcolor=NavyBlue \
	-V toccolor=Red \
	-V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
	-V subparagraph \
	-H head.tex \
	--highlight-style tango \
	--indented-code-classes rust \
	--tab-stop 2 \
	--table-of-contents \
	--no-check-certificate \
	--toc -N \
	-o exports/rustwannabe.pdf
	open exports/rustwannabe.pdf
