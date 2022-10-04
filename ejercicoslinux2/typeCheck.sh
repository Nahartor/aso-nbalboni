#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 2 (typeCheck.sh)



if [ $# -eq 1 ];then

    if [ -f "$1" ];then
        echo "El parámetro recibido es un archivo regular."
        exit 0

    elif [ -d "$1" ];then
        echo "El parámetro introducido es un directorio."
        exit 0

    elif ! [ -a "$1" ];then
        echo "El parámetro introducido NO existe."
        exit 0

    fi

else
    echo "Introduzca un único parámetro."
    exit 1

fi