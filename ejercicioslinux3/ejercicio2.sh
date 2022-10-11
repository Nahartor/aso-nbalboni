#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 2

read -p "Introduzca un número: " num

#Con WHILE

contador=1
echo "WHILE -->"
while [ $contador -le $num ]; do
    echo "$contador"
    let contador=contador+1

done

#Con FOR

#OP1
echo "OP1 -->"
for i in $(seq 1 $num); do
    echo "$i"

done

#OP2
echo "OP2 -->"
for (( j=1; j<=$num; j++ )); do
    echo "$j"


done