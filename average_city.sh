#!/bin/sh

AVG=$(grep "$1" *_murders_per_100k.md | awk -F\| '{count+=1; v+=$2;} END { print v/count }')
echo "${AVG}: $1"
