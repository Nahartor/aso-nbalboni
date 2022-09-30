#!/bin/bash

#Realizar un script que reciba la ruta de un fichero.
#Deberá comprobar si existe. En caso de existir mostrará los permisos que tiene.

#Pedimos la ruta del fichero.
read -p "Introduzca la ruta del fichero" ruta_f

#Ejecutamos el if correspondiente.
if [ -a "$ruta_f" ];then

    if [ -r "$ruta_f" ];then
    echo "Tienes permiso de lectura"
    fi
    if [ -w "$ruta_f" ];then
    echo "Tienes permiso de escritura"
    fi
    if [ -x "$ruta_f" ];then
    echo "Tienes permiso de ejecución"
    fi

else
echo "El fichero no existe"
fi