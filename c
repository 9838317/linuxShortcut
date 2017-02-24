#!/bin/bash

#remove all the files.
if [  -f ctxt ]; then
    rm ctxt;
fi

if [  -f ccompile ]; then
    rm ccompile;
fi

#get the fileName Without .c
name=$1;
withoutc=${name/.c/}
echo $withoutc;


fileName=$withoutc.c;

echo $name
echo $fileName;



clang $fileName -o $withoutc 2>ccompile;
./$withoutc > ctxt;
 




