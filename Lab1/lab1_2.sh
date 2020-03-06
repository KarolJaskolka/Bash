#!/bin/bash
# Karol Jaskolka
# Zadanie 1D

if [ $# -ne 2 ]
then
	exit 1
fi

if [ ! -d $1 ]
then
	exit 1
fi

if [ ! -d $2 ]
then
	exit 1
fi

if [ ! -w $1 ]
then
	exit 1
fi

#uswanie w katalogach

for plik1 in ` ls$1 `
do
	for plik2 in ` ls $2 `
	do
		if [ $plik1 =  $plik2 ]
		then
			if [ ! -x $1/$plik1 -a ! -d $1/$plik1 -a ! -d $1/$plik2 ]
			then
				rm $1/$plik1
			fi
		fi
	done
done

#usuwanie w podkatalogach

for plik1 in ` ls$1 `
do
	if [ -d $1/$plik1 ]
	then
		for plik2 in ` ls $2 `
		do
			if [ -d $2/$plik2 ]
			then
				for pod_plik1 in ` ls$1/$plik1 `
				do
					for pod_plik2 in ` ls $2/$plik2 `
					do
						if [ $pod_plik1 = $pod_plik2  ]
						then
							if [ ! -x $1/$plik1/$pod_plik1 -a ! -d $1/$plik1/$pod_plik1 -a ! -d $2/$plik2/$pod_plik2  ]
							then
								rm $1/$plik1/$pod_plik1
							fi
						fi
					done
				done
			fi
		done
	fi
done

