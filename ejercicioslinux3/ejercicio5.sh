#!/bin/bash

#Author: Nicola Balboni
#Date: 10/11/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 5

read -p "Escriba un número: " num

for (( i=1; i<=10; i++)); do
    prod=$(($num*i))
    echo "$num por $i es: $prod"
done