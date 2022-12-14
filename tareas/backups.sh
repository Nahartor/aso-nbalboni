# !/bin/bash

#Author: Nicola Balboni
#Date: 12/13/2022
#Ejercicios de AUTOMATIZACIÓN DE TAREAS
#Ejercicio 4

fecha=$(date +%d-%m-%y)
#ruta="/backup/archivo-$fecha.tar.gz"

tar -czvf /backup/archivo-$fecha.tar.gz /tmp