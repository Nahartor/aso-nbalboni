# !/bin/bash

#Author: Nicola Balboni
#Date: 12/13/2022
#Ejercicios de AUTOMATIZACIÓN DE TAREAS
#Ejercicio 2

hora=$(date +%H:%M)
apt update & apt -y upgrade
if [ $? -eq 0 ]; then
    echo "El comando se ejecuto correctamente a las $hora." >> /var/log/update.log 
fi