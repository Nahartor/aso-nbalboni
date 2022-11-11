#!/bin/bash

#Author: Nicola Balboni
#Date: 11/10/2022
#Ejercicios de BASH LINUX 4
#Ejercicio 3

lenguajes=$(cat conocimientos.csv | awk -F: '{print $2}' | sed 's/,/\n/g' | sort -u)


for lenguaje in $lenguajes;do
    personas=$(grep $lenguaje conocimientos.csv | awk -F: '{print $1}')
    echo -e "$lenguaje: \n$personas"
    echo "------------------------------------------------------------"

done