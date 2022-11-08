#!/bin/bash

#Author: Nicola Balboni
#Date: 11/08/2022
#Ejercicios de BASH LINUX 4
#Ejercicio 1

usuarios=$(cat ./files.txt | awk -F: '{print $4}')

echo $usuarios

