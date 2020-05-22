#!/bin/bash
# Karol Jaskolka
# Zadanie 1

wget -qO- http://datko.pl/SO2/kant.txt | awk '/(\+[0-9]{2}[[:space:]][0-9]{3}[[:space:]]\
[0-9]{3}[[:space:]][0-9]{3})|([0-9]{3}\-[0-9]{3}\-[0-9]{3})/ {print $0}' | sed 's/[^0-9\+\-]*//g'