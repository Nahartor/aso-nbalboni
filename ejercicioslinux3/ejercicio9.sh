#!/bin/bash

#Author: Nicola Balboni
#Date: 10/25/2022
#Ejercicios de BASH LINUX 3
#Ejercicio 9

usuarios=$(cat ./usuarios.txt)

# echo $usuarios

n=1
for usuario in $usuarios; do
    echo "Usuario $n → Nombre: $usuario"
    let n=n+1

done