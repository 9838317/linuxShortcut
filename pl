#!/bin/bash 
# pipe runs concurrently. So if you want to run the command sequentially, use ";"
# This file allows to compile a tex file to a pdf file and then open it. 

name=${1}
withoutTexSuffix=${name/.tex/}
fileName=$withoutTexSuffix.tex;

echo $name
echo $fileName;


args=pdflatex\ --shell-escape\ $withoutTexSuffix.tex;
echo $args;
$args;
okular $withoutTexSuffix.pdf;
 
