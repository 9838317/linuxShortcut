#!/bin/sh 
#pipe runs concurrently. So if you want to run the command sequentially, use ";"


name=${1}
args=$name.c
echo $args
g++ $args -o $name  ;
./$name             ;
 
