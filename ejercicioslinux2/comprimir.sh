#!/bin/bash

#Nicola Balboni
#Ejercicios de BASH LINUX 2
#Ejercicio 7 (comprimir.sh)

if [ $1 != "-t" ] || [ $# -ne 3 ];then
    echo "Valores incorrectos."
    exit 1

else
    case $2 in

        rar)
            # lpaneque: :) Se puede instalar. Puedes comprobar si está instalado con which rar y si no está mostrar un mensaje indicando que no está instalado.
            echo "RAR no esta disponible en Debian."
            ;;

        zip) zip "$3".zip "$3" > /dev/null 2>&1
            ;;

        gzip) gzip -k "$3" > /dev/null 2>&1
            ;;

        bzip) bzip2 -k "$3" > /dev/null 2>&1
            ;;
        # lpaneque: Aquí podrías poner un * que contemple cualquier valor incorrecto.
    esac

fi
