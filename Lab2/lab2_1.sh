#!/bin/bash
# Karol Jaskolka
# Zadanie 22

if [ $# -ne 2 ]
then
    exit 1
fi

for plik in $( ls $1 )
do
    if [ -x $1/$plik -a -f $1/$plik ]
    then
        ln $1/$plik $2/$plik
    elif [ -d $1/$plik ]
    then
        ln -s $1/$plik $2/$plik
    fi
done