#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 6

directorio=$1
if  [ -d $1 ]; then
    numero=0
    for file in $(ls $directorio);do
        numero=$(($numero+1))

    done

    echo "El número de archivos y directorios es $numero"

else
    "$1 no es un directorio."
    exit 1

fi