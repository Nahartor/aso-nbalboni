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

for usuario in $usuarios; do
#    echo "---------------------------------------------------"
#    echo "$usuario"
#    echo "---------------------------------------------------"
    if echo "$passwd" | grep "$usuario";then
        echo -e "${green}El usuario $usuario EXISTE en el sistema."

    else
        echo -e "${red}El usuario $usuario NO EXISTE en el sistema."
    fi

done