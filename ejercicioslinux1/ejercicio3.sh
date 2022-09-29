#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 1
#Ejercicio 3

echo "***************************************"
echo "          INFORME DEL SISTEMA          "
echo "***************************************"

fecha=$(date)
echo "1. Fecha: $fecha"

echo "2. Usuario actual: $USER"

echo "3. Directorio Home del usuario actual: $HOME"

echo "4. Valor del PATH: $PATH"

conectados=$(who)
echo "5. Usuarios conectados: $conectados"

ultimos=$(tail -3 /etc/passwd)
echo "6. Nombre de los tres últimos usuarios de /etc/passwd: $ultimos"

primeros=$(cat /etc/group | head -3)
echo "7. Los tres primeros grupos de /etc/group: $primeros"

UID=$(id -u)
echo "8. UID del usuario actual: $UID"

rootShell=$(cat /etc/passwd | head -1 | awk -F: '{print $7}')
echo "9. Shell del usuario root: $rootShell"

totalBash=$(grep -o -i /bin/bash /etc/passwd | wc -1)
echo "10. Número de usuarios que usan por defecto la shell /bin/bash: $totalBash"