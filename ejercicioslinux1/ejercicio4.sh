#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 4

#Definimos variables
totalUsers=$(cat /etc/passwd | awk -F: '{print $1}' | wc -l)
userNames=$(cat /etc/passwd | awk -F: '{print $1}')

#Mostramos por pantalla
echo "Se han encontrado $totalUsers usuarios:"
echo "$userNames"