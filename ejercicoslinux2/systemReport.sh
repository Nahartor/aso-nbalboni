#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 5 (systemReport.sh)

if [ -a "./report.txt" ];then

    echo "El archivo report.txt ya existe."
    read -p "¿Desea sobre escribir el archivo? [Y/N]: " opcion

    if [ $opcion = "Y" ] || [ $opcion = "y" ];then
        rm -f ./report.txt
        echo "$(date)" >> ./report.txt
        echo "$HOSTNAME" >> ./report.txt
        echo "$(hostname -I)" >> ./report.txt
        echo "Estado de las particiones:" >> .report.txt
        df >> .report.txt
        echo "Estado de la memoria:" >> .report.txt
        free >> ./report.txt

        exit 0

    elif [ $opcion = "N" ] || [ $opcion = "n" ];then
        echo "No se ha generado el archivo."
        exit 0

    else
        echo "Opción incorrecta."
        exit 1

    fi


else
#    touch report.txt
    echo "Hola" > ./report.txt

fi
