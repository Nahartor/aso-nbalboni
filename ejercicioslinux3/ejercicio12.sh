#!/bin/bash

#Author: Nicola Balboni
#Date: 10/26/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 12

#La siguiente linea extrae el directorio HOME de los usuarios del sistema.
# cat /etc/passwd | awk -F: '{print $6}'

#La siguiente linea extrae el nombre de los ususarios del sistema.
# cat /etc/passwd | awk -F: '{print $1}'

#La siguiente linea extrae los nombres de usuario de un archivo dado.
# cat "$1" | awk -F";" '{print $1}'

#Script

usuarios=$(cat ./usuarios.txt | awk -F";" '{print $1}')

for usuario in $usuarios; do
    cat /etc/passwd | awk -F: '{print $6}' | grep "$usuario"

done