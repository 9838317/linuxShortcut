#!/bin/sh

name=${1};
echo $name;
fileName=https://www.google.com.sg/?#q=$name;
echo $fileName;
chromium --new-window $fileName

