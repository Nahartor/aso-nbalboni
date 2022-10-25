#!/bin/bash

#Author: Nicola Balboni
#Date: 10/25/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 10

while read -r registro; do
    usuario=$(echo $registro | awk -F";" '{print $1}')
    edad=$(echo $registro | awk -F";" '{print $2}')
    echo "$usuario tiene $edad años."

done < ./usuarios.txt
