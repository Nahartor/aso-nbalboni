#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 6

#Solicitamos al usuario que introduzca dos números.
read -p "Escriba un número: " num1
read -p "Escriba otro número: " num2

#Escribimos la sentencia if correspondiente.
if [ $num1 -gt $num2 ];then

    echo "$num1 es mayor que $num2"

elif [ $num2 -gt $num1 ];then

    echo "$num2 es mayor que $num1"

else

    echo "$num1 y $num2 son iguales"

fi