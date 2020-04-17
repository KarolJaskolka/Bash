#!/bin/bash
# Karol Jaskolka
# zadanie 1

if [ $# -ne 1 ]
then 
    exit 1
fi

if [ ! -d $1 ]
then
    exit 1
fi

find $1 -type d -empty -mtime +30 -print