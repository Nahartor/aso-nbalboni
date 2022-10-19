#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 5 (systemReport.sh)

REPORT="report.txt"

if [ -a "report.txt" ];then

    echo "El archivo report.txt ya existe."
    read -p "¿Desea sobre escribir el archivo? [Y/N]: " opcion

    if [ $opcion = "Y" ] || [ $opcion = "y" ];then
        echo "$(date)" > REPORT
        echo "$HOSTNAME" >> REPORT
        echo "$(hostname -I)" >> REPORT
        echo "Estado de las particiones:" >> REPORT
        df >> .report.txt
        echo "Estado de la memoria:" >> REPORT
        free >> REPORT

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
    echo "Hola" > REPORT

fi
