#!/bin/bash
# Karol Jaskolka
# Zadanie 2

wget -qO- http://datko.pl/SO2/nowomow.txt | awk '{ \
    sub(/\.04\./,".IV."); \
    sub(/\.05\./,".V."); \
    sub(/\.10\./,".X."); \
    sub(/\.12\./,".XII."); \
    sub(/\/07\//,"/VII/"); \
    sub(/\/11\//,"/XI/"); \
    print $0}'
