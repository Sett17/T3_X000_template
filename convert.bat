SET FILENAME="T3_X000 Paper my name.pdf"
pandoc "t3_X000.md" -f markdown -t latex --template="tex\template.tex" --highlight-style "tex\githubGrey.theme" --filter "path\to\pandoc-fignos.exe" --toc --toc-depth=5 -N --citeproc --bibliography "tex\t3X000.bib" --csl "tex\ieee.csl" --pdf-engine=xelatex --mathjax -o %FILENAME%
if %errorlevel% neq 0 exit /b %errorlevel%
%FILENAME%