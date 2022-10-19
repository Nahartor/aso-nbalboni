#!/bin/bash

#Author: Nicola Balboni
#Date: 10/18/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 8

read -p "Introduzca una altura: " altura
read -p "Introduzca una anchura: " anchura

for ((i=1;i<=$altura;i++));do
    for ((j=1;j<=$anchura;j++)); do
        echo -n "*"

    done
    printf "\n"

done