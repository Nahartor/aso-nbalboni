#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 10

read -p "Introduzca la ruta de su fichero o directorio: " ruta 

if [ -f $ruta ];then
    echo "$ruta es un ficehro."

elif [ -d $ruta ];then
    echo "$ruta es un directorio."

else
    echo "El fichero o directorio no existe."
    exit 1

fi