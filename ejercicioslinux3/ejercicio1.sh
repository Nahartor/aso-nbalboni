#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 1

read -p "Introduzca un saludo: " saludo
read -p "Introduzca el número de veces que quiere que se repita el saludo: " veces

#Con WHILE

contador=$veces
echo "WHILE -->"
while [ $contador -gt 0 ]; do
    echo "$contador - $saludo"
    let contador=contador-1

done

#Con FOR

#OP1
echo "OP1 -->"
for i in $(seq 1 $veces); do
    echo "$i - $saludo"

done

#OP2
echo "OP2 -->"
for (( j=1; j<=$veces; j++ )); do
    echo "$j - $saludo"


done