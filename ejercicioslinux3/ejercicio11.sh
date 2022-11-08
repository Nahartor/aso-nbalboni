#!/bin/bash

#Author: Nicola Balboni
#Date: 10/25/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 11

usuarios=$(cat ./usuarios.txt | awk -F";" '{print $1}')
passwd=$(cat /etc/passwd |awk -F: '{print $1}')

#echo "$usuarios"
#echo "---------------------------------------------------"
#echo "$passwd"
#echo "---------------------------------------------------"

#Almacenamos los colores en variables
RED="\e[0;31m"
GREEN="\e[0;32m"

for usuario in $usuarios; do
#    echo "---------------------------------------------------"
#    echo "$usuario"
#    echo "---------------------------------------------------"
    if echo "$passwd" | grep "$usuario";then
        echo -e "${GREEN}El usuario $usuario EXISTE en el sistema."

    else
        echo -e "${RED}El usuario $usuario NO EXISTE en el sistema."
    fi

done