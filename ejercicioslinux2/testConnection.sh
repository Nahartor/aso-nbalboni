#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 4 (testConnection.sh)

if [ $# -eq 1 ];then
    ping -c1 $1 > /dev/null 2>&1

    respuesta=$?
    if [ $respuesta -eq 0 ];then
        echo "La máquina con ip $1 responde. ALIVE MACHINE"
        exit 0 
    
    elif [ $respuesta -ge 1 ];then
        echo "La máquina con ip $1 NO responde. DEAD MACHINE"
        exit 0

    fi

else
    echo "Introduzca un único parámetro"
    exit 1

fi