#!/bin/sh

BIFS=$IFS

IFS='
'

for c in $(cat *_murders_per_100k.md  | awk -F\| '{print $3}' | grep -v "^ City" | grep -v ":"); do 
	./average_city.sh "$c"
done | sort -rn

IFS=$BIFS
