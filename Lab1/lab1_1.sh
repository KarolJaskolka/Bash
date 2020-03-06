#!/bin/bash
# Karol Jaskolka
# Zadanie 0A

if [ $#  -ne 2  ]
then
	exit 1
fi

for plik1 in ` ls $1 `
do
	for plik2 in  ` ls $2 `
		do
			if [ $plik1 = $plik2 ]
			then
				rm $1/$plik1
			fi 
	done
done
