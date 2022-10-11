#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 4

read -p "Escriba un número: " num
suma=0
for (( i=$num; i>=0; i--)); do
    suma=$(($suma+i))

done

echo "La suma es --> $suma"