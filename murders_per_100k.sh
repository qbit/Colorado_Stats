#!/bin/sh

echo "| Murder or manslaughter per 100k people | City |"
echo "| ------------- |-----:|"
awk -F\; '{murder = $4; pop = $2; d = pop / 100000; if ( murder > 0 ) { print "|" murder / d "|" $1 "|"}}' colorado-stats.csv | sort -rn -k2 -t\|
