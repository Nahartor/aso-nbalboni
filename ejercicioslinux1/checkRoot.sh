#!/bin/bash

#Vamos a comprobar si mi usuario es "Root"
yo=$(whoami)

if [ "$yo" = "root" ]; then
    echo "Eres Root"
else
    echo "Este programa debe ser ejecutado como root"
    exit 1
fi

#Version 2.0
userId=$(id -u)

if [ $userId -eq 0 ]; then
    echo "Eres Root"
else
    echo "Este programa debe ser ejecutado como root"
    exit 1
fi