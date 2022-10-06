#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 5 (systemReport.sh)

if [ -a "./report.txt" ];then

    echo "El archivo report.txt ya existe."
    read -p "¿Desea sobre escribir el archivo? [Y/N]: " opcion

    if [ opcion = "Y" ] || [ opcion = "y" ];then
        rm -f ./report.txt
        echo "$(date)" >> ./report.txt
        echo "$HOSTNAME" >> ./report.txt
        echo "$(ip addr)" >> ./report.txt
        

else
#    touch report.txt
    echo "Hola" > ./report.txt

fi
