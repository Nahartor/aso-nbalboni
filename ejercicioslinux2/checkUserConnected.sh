#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 3 (checkUserConnected.sh)

if [ $# -eq 1 ];then
    who | grep -o "^$1 " > /dev/null 2>&1

    status=$?
    if [ $status -eq 0 ];then
        echo "$1 está conectado."

    else
        echo "$1 no está conectado."

    fi

else
    echo "Número de parámetros incorrecto."
    exit 1

fi

# lpaneque: El script queda más claro si al comenzar asignas los parámetros a variables con un nombre adecuado, por ejemplo usuario=$1
