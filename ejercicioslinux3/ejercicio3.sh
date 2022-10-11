#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 3

read -p "Introduzca un número: " num

for i in $(seq 1 $num); do
    
    #Calculamos el resto
    let resto=i%2
    if [ $resto -eq 0 ]; then
        echo $i

    fi

done
