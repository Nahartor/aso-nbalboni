#!/bin/bash

#Realizar un script que pida el nombre de un alumno y su nota.

#Pedismos el nombre del alumno y lo introducumos en una variable.
read -p "Escriba el nombre y apellidos del alumno: " nombre_usuario

#Pedimos la nota del alumno.
read -p "Escriba la nota del alumno (en número): " nota_usuario

#A continuación realizamos el if correspondiente
if [ $nota_usuario -ge 0 ] && [ $nota_usuario -lt 5 ];then
    echo "La nota de $nombre_usuario es INSUFICIENTE"

elif [ $nota_usuario -ge 5 ] && [ $nota_usuario -lt 7 ];then
    echo "La nota de $nombre_usuario es SUFICIENTE"

elif [ $nota_usuario -ge 7 ] && [ $nota_usuario -lt 9 ];then
    echo "La nota de $nombre_usuario es NOTABLE"

elif [ $nota_usuario -ge 9 ] && [ $nota_usuario -lt 10 ];then
    echo "La nota de $nombre_usuario es SOBRESALIENTE"

elif [ $nota_usuario -eq 10 ];then
    echo "La nota de $nombre_usuario es MATRÍCULA DE HONOR"

else
    echo "La nota introducida es incorrecta"

fi