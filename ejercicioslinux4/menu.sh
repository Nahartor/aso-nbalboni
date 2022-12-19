#!/bin/bash

#Author: Nicola Balboni
#Date: 11/10/2022
#Ejercicios de BASH LINUX 4
#Ejercicio 2

#Declaración de funciones
function opcion1(){
    echo "Has elegido la Opción 1"
}

function opcion2(){
    echo "Has elegido la Opción 2"
}

function opcion3(){
    echo "Has elegido la Opción 3"
}

function salir(){
    echo "¡Hasta luego!"
    exit 0
}

#Comienzo del script
terminar=false
while [ $terminar == false ]
do
    read -p "Escoja una opcion (entre 1 y 3 o s para salir): " opcion

    if [ "$opcion" == 1 ];then
        opcion1

    elif [ "$opcion" == 2 ];then
        opcion2

    elif [ "$opcion" == 3 ];then
        opcion3
    elif [ "$opcion" == "s" ] || [ "$opcion" == "S" ];then
        salir
        terminar=true
    else
        echo "Opcion no válida"
    fi

done

# lpaneque: Buen trabajo!
