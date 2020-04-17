#!/bin/bash
# Karol Jaskolka
# zadanie 34

if [ $# -ne 1 ]
then
    echo "nie podano zadnego argumentu"
    exit 1
fi

if [ ! -r $1 ]
then
    echo "brak uprawnien do odczytu katalogu"
    exit 1
fi

var_pwd=$( pwd )

echo $var_pwd

for plik in $( ls $1 )
do
    if [ -L $1/$plik ]
    then
        echo "nazwa dowiazania"
        echo $plik
        if [ -e $( readlink $1/$plik ) ]
        then
            echo "na plik"
            echo $( readlink $1/$plik )
        else
            echo "nie istnieje plik na ktory wskazuje"
        fi
    # podkatalogi
    elif [ -d $1/$plik ]
    then
        ./lab2_2.sh $1/$plik
    fi
done