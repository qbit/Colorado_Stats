#!/bin/sh

echo -n "$1 : "
grep $1 *.md | awk -F\| '{count+=1; v+=$2;} END { print v/count }' 
