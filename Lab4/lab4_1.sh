#!/bin/bash
# Karol Jaskolka
# zadanie 1

if [ $# -ne 1 ]
then
    exit 1
fi

find $1 -type f -print | while read filename
do
    if [ $filename = $(echo $filename | rev) ]
    then
        echo $filename | tee result.txt
    fi
done