#!/bin/bash

#Author: Nicola Balboni
#Date: 10/18/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 7

usuario=$(cat /etc/passwd | awk -F: '{print $1}')

for usuario in $usuario;do
    echo "Hola $usuario"

done