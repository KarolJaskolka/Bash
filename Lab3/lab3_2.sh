#!/bin/bash
# Karol Jaskolka
# zadanie 2

if [ $# -ne 1 ]
then 
    exit 1
fi

# a)

echo "ilosc"
find $1 -type f -readable -print | wc -l

# b)

echo "dzien"
find $1 -type f -readable -mtime -1 -print

echo "tydzien"
find $1 -type f -readable -mtime -7 -print

echo "miesiac"
find $1 -type f -readable -mtime -30 -print

echo "dawniej"
find $1 -type f -readable -mtime +30 -print

# c)

me=$(whoami)

echo $me

find $1 -type f -readable ! -user $me -print | wc -l

# d)

files=$( find $1 -type f -readable ! -user $me -print )

for file in $files
do
    echo $( realpath $file )
    echo $( stat -c "%A %U %G" $file )
done
