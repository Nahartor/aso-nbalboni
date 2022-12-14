# !/bin/bash

#Author: Nicola Balboni
#Date: 12/14/2022
#Examen ASO - Ejercicio 3

fecha=$(date +%d%m%y)

if [ -f ./salmonete.log ];then
    echo "$fecha >> El archivo ./salmonete.log existe."
    echo "$fecha >> El archivo ./salmonete.log existe." >> ./logRotation.log
    copia= "./salmonete-$fecha.log"
    $contenido > ./salmonete-$fecha.log
    echo "$fecha >> Se ha copiado el contenido de ./salmonete.log al archivo ./salmonete-$fecha.log"
    echo "$fecha >> Se ha copiado el contenido de ./salmonete.log al archivo ./salmonete-$fecha.log" >> ./logRotation.log
    gzip ./salmonete-$fecha.log
    echo "$fecha >> El archivo ./salmonete-$fecha.log se ha comprimido."
    echo "$fecha >> El archivo ./salmonete-$fecha.log se ha comprimido." >> ./logRotation.log
    echo "" > ./salmonete.log

    else
        echo "El archivo ./salmonete.log NO existe."
        echo "$fecha >> El archivo ./salmonete.log NO existe." >> ./logRotation.log

fi