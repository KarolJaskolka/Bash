#!/bin/bash
# Karol Jaskolka
# zadanie 1

if [ $# -ne 1 ]
then
    exit 1
fi

ls -l $1 | awk ' BEGIN {sum=0;} {sum+=$5;} END {print sum;} '