#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 6 (checkPortStatus.sh)

#Solicitamos al usuario que introduzca un puerto válido.

read -p "Intrduzca un número de puerto TCP entre 1 y 65535 (ambos inclusive): " puerto

if [ -n "$puerto" ];then
    if [ $puerto -ge 1 ];then
        if [ $puerto -le 65535 ];then
            ss -talwn | grep -i $puerto | head -1 | awk '{print $5}'

        else
            echo "Debe introducir un valor válido."
            echo "El valor introducido no puede ser superior a 65535."
            exit 1

        fi
    
    else
        echo "Debe introducir un valor válido."
        echo "El valor introducido no puede ser menor a 1."
        exit 1
    
    fi


else
    echo "Debes introducir algún valor."
    echo "Adios"
    exit 1

fi