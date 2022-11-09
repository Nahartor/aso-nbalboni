#!/bin/bash

#Author: Nicola Balboni
#Date: 11/08/2022
#Ejercicios de BASH LINUX 4
#Ejercicio 1

#Definimos funciones
function checkUser(){
    IFS=":"
    while read -r $tipo $archivo $permisos $usuario $grupo
    do
        num=$(cat /etc/passwd | grep "^$usuario:" | wc -l)
        if [ $num -ge 1 ];then
            echo "El usuario existe"
            return 1

        else
            echo "El usuario no existe"
            return 0
        fi

    done < files.txt
}

function checkGroup(){
    IFS=":"
    while read -r $tipo $archivo $permisos $usuario $grupo
    do
        num2=$(cat /etc/passwd | grep "^$grupo" | wc -l)
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
    if [ $(id -u $USER) -ne 0 ];then
        echo "Este script debe ser ejecutado como root"
        return 1

    else
        return 0

    fi
}

#Comienzo del script
checkRoot
