#!/bin/bash
# Karol Jaskolka
# zadanie 2

if [ $# -ne 1 ]
then
    exit 1
fi

# <img src="path/image.png">

wget -qO- $1 | awk '/png|gif|jpeg/ {split($0,arr,"\"");print arr[2];}' | tee result.txt

cat result.txt

# d)

# <link rel="stylesheet" href="path/style.css">

wget -qO- $1 | awk '/css/ {split($0,arr,"\"");print arr[4];}' | tee css.txt

for path in $(cat css.txt)
do
 wget -qO- $path | awk '/png|gif|jpeg/ {split($0,arr,"\"");print arr[2];}' | tee -a result2.txt
done

cat result2.txt