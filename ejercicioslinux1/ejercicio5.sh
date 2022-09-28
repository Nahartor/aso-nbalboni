#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 5

#Pedimos que nos introduzcan el valor de la variable por pantalla
read -p "Introduzca un número entrero: " num

#Ejecutamos la sentencia if correspondiente
if [ $num -eq 0 ];then

    echo "El número introducido es cero."
    exit 0

elif [ $num -lt 0 ];then

    echo "El número indroducido es negativo"
    exit 0

elif [ $num -gt 0 ];then

    echo "El número introducido es positivo"
    exit 0

else

    echo "El valor introducido no corresponde con ningun número entero"
    echo "Recargue el programa y vuelva a intentarlo"
    exit 1

fi