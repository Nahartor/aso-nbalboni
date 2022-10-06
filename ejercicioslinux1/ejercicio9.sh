#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 9

read -p "Introduce un numero cualquiera (o dejalo en blanco, tu mismo): " dato

if [ -z $dato ];then
    echo "Enhorabuena! Has hecho justo lo que quería."
    exit 0

else
    echo "Acabas de ser víctima de psicologia inversa sinversa"
    exit 0

fi