#!/bin/bash

# Ejemplos if
#Comparación de tipo texto
read -p "Introduzca la asignatura en la que te vas a matricular: " asignatura

if [ "$asignatura" = "ASO" ];then
    echo "Matriculado en ASO"
elif [ "$asignatura" = "SRI" ];then
    echo "Matriculado en SRI"
elif [ "$asignatura" = "IAW" ];then
    echo "Matriculado en IAW"
else
    echo "Asignatura Incorrecta."
fi
