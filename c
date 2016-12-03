#!/bin/sh

name=$1;
fileName=$name.c;
clang $fileName -o $name;
./$name;



