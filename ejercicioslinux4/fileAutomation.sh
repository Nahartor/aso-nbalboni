#!/bin/bash

#Author: Nicola Balboni
#Date: 11/08/2022
#Ejercicios de BASH LINUX 4
#Ejercicio 1

#Definimos funciones
function checkUser(){. # lpaneque: Esta función debería chequear un único usuario por su nombre.
    while read -r linea
    do
        usuario=$(echo $linea | awk -F':' '{print $4}')
        num=$(cat /etc/passwd | grep -i "^$usuario:" | wc -l)
        if [ $num -ge 1 ];then
            echo "El usuario existe"
            return 1 # lpaneque: Al revés, si el grupo existe devuelves un 0 que significa que no hay error. El 1 indica algún error.

        else
            echo "El usuario no existe"
            return 0
        fi

    done < files.txt
}

function checkGroup(){
    while read -r linea
    do
        grupo=$(echo $linea | awk -F':' '{print $5}')
        num2=$(cat /etc/passwd | grep -i "^$grupo" | wc -l)
        if [ $num2 -ge 1 ];then
            echo "El grupo existe"
            return 1

        else
            echo "El grupo no existe"
            return 0

        fi

    done < files.txt
}


function checkRoot(){
    if [ $(id -u) -ne 0 ];then
        echo "Este script debe ser ejecutado como root"
        echo "$(date)--- Este script debe ser ejecutado como root" >> fileAutomation.log
        exit 1

    fi
}

function creaAoD(){
    while read -r linea
    do
    lectura=$(echo $linea | awk -F':' '{print $1}')
        if [ "$lectura" == "d" ];then
            directorio=$(echo $linea | awk -F':' '{print $2}')
            mkdir $directorio
            echo "El directorio ha sido creado satisfactoriamente en la ruta especificada: $directorio"
            echo "$(date)--- El directorio ha sido creado satisfactoriamente en la ruta especificada: $directorio" >> fileAutomation.log


        elif [ "$lectura" == "f" ];then
            archivo=$(echo $linea | awk -F':' '{print $2}')
            touch $archivo
            echo "El archivo ha sido creado satisfactoriamente en la ruta especificada: $archivo"
            echo "$(date)--- El archivo ha sido creado satisfactoriamente en la ruta especificada: $archivo" >> fileAutomation.log

        fi
    done < files.txt
}

#Comienzo del script
echo "Chequeamos Root"
checkRoot
echo "Chequeamos Usuario"
checkUser
echo "Chequeamos Grupo"
checkGroup
echo "Creamos Archivos y coses"
creaAoD

# lpaneque: Si algún usuario no existe, qué sucede? No se está cambiando el dueño del archivo ni el grupo
