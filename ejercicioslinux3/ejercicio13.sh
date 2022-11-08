#!/bin/bash

#Author: Nicola Balboni
#Date: 11/08/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 13

# Definimos funciones

logError (){
    mensaje=$1
    RED="\e[0;31m"
    NONE="\e[0m"

    echo -e "${RED}$1${NONE}"

}

logWarn (){
    YELLOW="\e[1;33m"
    NONE="\e[0m"

    echo -e "${YELLOW}$1${NONE}"

}

logInfo (){
    GREEN="\e[0;32m"
    NONE="\e[0m"

    echo -e "${GREEN}$1${NONE}"

}

#Ahora llamamos a las funciones y les pasamos los mensajes correspondientes
logError "Mensaje de error."
logWarn "Mensaje de advertencia."
logInfo "Mensaje de información."