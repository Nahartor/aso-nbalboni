#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 7

if [ $(id -u) -eq 0 ];then
    echo "Usuario correcto"
    exit 0

else
    echo "Este script debe ser ejecutado como root."
    exit 1

fi