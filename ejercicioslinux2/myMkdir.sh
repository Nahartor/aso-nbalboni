#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 1 (myMkdir.sh)

read -p "Introduzca la ruta completa de un directorio: " ruta

if [ -d "$ruta" ]; then
    echo "El directorio introducido ya existe."

else
    echo "El rdirectorio no existe."
    read -p "¿Desea crearlo? [Y/N]: " opcion

    if [ $opcion = "Y" ] || [ $opcion = "y" ]; then
        mkdir "$ruta"
        echo "Directorio creado con éxito."
        exit 0

    elif [ "$opcion" = "N" ] || [ "$opcion" = "n" ]; then
        echo "Que tenga un buen dia."
        exit 0

    else 
        echo "Opcion incorrecta."
        exit 1
    fi
fi