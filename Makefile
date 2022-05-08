export PATH := $(PATH):/Library/TeX/texbin

default:
	@rm -rf exports/rustwannabe.pdf
	pandoc ./src/*.md \
	--pdf-engine=xelatex \
	-V mainfont="Verdana" \
	-V colorlinks \
	-V urlcolor=NavyBlue \
	-V toccolor=NavyBlue \
	--from markdown+table_captions+auto_identifiers \
	-V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
	-V subparagraph \
	-H head.tex \
	-s \
	--highlight-style tango \
	--indented-code-classes rust \
	--tab-stop 2 \
	--table-of-contents \
	--no-check-certificate \
	--toc -N \
	--standalone \
	--metadata-file metadata.yml \
	--metadata=cover-image:images/pexels-karolina-grabowska-4710232.jpg \
	-o exports/rustwannabe.pdf
	open exports/rustwannabe.pdf
