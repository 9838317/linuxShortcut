#!/bin/sh 
#pipe runs concurrently. So if you want to run the command sequentially, use ";"


name=${1}
args=pdflatex\ --shell-escape\ $name.tex;
echo $args;
$args;
okular $name.pdf;
 
