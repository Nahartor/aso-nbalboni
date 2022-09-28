#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 1

#Definimos variables
user=$(whoami)
sem=$(date +%A)
mes=$(date +%B)
year=$(date +%G)
hora=$(date +%H:%M)

#Ahora lanzamos los mensajes al usuario
echo "Bienvenido al sistema $user"
echo "Hoy es $sem"
echo "Del mes de $mes"
echo "Del año $year"
echo "Hora $hora"