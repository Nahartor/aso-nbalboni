#!/bin/bash

#Author: Nicola Balboni
#Date: 12/16/2022
#Examen ASO - Recuperación BASH

#Comprobación de que el script se esta ejecutando con permisos de root.
if [ $(whoami) != "root" ]; then
    echo "Este script debe ser ejecutado con privilegios de root"
    exit 1

fi

#Primero vamos a obtener todas las variables necesarias para escribir el informe.

dia=$(date +%d)
mes=$(date +%B)
Mes=${mes^}
anyo=$(date +%Y)
fecha="$dia de $Mes de $anyo"
#echo $fecha
usuBash=$(cat /etc/passwd | awk -F: '{print $7}' | grep /bin/bash | wc -l)
#echo $usuBash
numUsu=1

#Comenzamos a escribir el informe.
echo "*******************************************************************"
echo "Fecha Informe: $fecha"
echo "*******************************************************************"
echo "Número de usuarios con la shell /bin/bash: $usuBash"

#A partir de aqui escribirá las lineas correspondientes a casa usuario a través de un bucle.
while read -r linea; do
    usuario=$(echo $linea | awk -F: '{print $1}')
    uid=$(echo $linea | awk -F: '{print $3}')
    home=$(echo $linea | awk -F: '{print $6}')
    #primario=$(cat /etc/groups | grep $uid | awk -F: '{print $1}' | head -n 1)
    primario=$(groups $usuario | awk '{print $1}')
    secundarios=$(groups $usuario | awk '{for(i=2;i<=NF;++i)print $i}')
    if [ $(cat /etc/sudoers | grep $usuario | awk '{print $1}') = $usuario ];then sudo="YES"; else sudo="NO"; fi
    #Una vez obtenidos todos los parámetros pasamos a escribir la parte del informe correspondiente.
    echo "************************* USUARIO $numUsu *************************"
    echo "Usuario: $usuario"
    echo "UID: $uid"
    echo "Home: $home"
    echo "Grupo Primario: $primario"
    echo "Grupos Secundarios: $secundarios"
    echo "sudo: $sudo"

    numUsu=$(($numUsu+1))

done < /etc/passwd

echo "*******************************************************************"