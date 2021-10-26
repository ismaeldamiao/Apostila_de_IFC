#!/bin/sh

GREEN='\033[0;32m'
WHITE='\033[0;37m'

cp * /tmp/
cd /tmp

gcc -std=c99 mdc.c -o mdc
echo "${GREEN}Executando mdc.c${WHITE}"
./mdc 3 71

gfortran crivo.f90 -o crivo
echo "${GREEN}Executando crivo.f90${WHITE}"
./crivo

javac fibonacci.java
echo "${GREEN}Executando fibonacci.java${WHITE}"
java fibonacci 10

echo "${GREEN}Executando hanoi.py${WHITE}"
python hanoi.py 3

exit 0
