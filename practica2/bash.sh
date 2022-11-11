#!/bin/bash

#Author: Nicola Balboni
#Date: 

Para almacenar el resultado de un comando en una variable podemos utilizar:
fecha=$(date)

Los comandos que se ejecutan en un shell tienen un código de salida, que se almacena en la variable $?
Si $? es 0 el comando anterior terminó bien si $? es > 0 el comando terminó con algún error.
El código de salida de un comando puede utilizarse en una sentencia if.

#para mandar las salidas de los comandos y los mensajes de error a la nada:
comando >/dev/null 2>&1 

$0   Nombre del script (miScript.sh)
$1   Primer argumento (primer_parametro)
$2   Segundo argumento (2)
$3   Tercer argumento (tercero)
$*    Todos los argumentos (excluido $0)
$@  Todos los argumentos (excluido $0) igual que $*
$#    Nº de argumentos (excluido $0)
$$   pid del proceso actual (sólo mientras se está ejecutando, al terminar, si ejecutamos "ps" no aparece)
$?   Código de error de la última operación realizada (vale 0 sino se ha producido ningún error)

*   --> El carácter  * sustituye a una cadena de caracteres de cualquier longitud (incluida longitud 0)
?   --> El carácter  ? sustituye a cualquier carácter, pero sólo 1
[c1-c2]   --> Sustituye a todos los caracteres comprendidos entre c1 y c2
[c1c2c3] --> Sustituye a sólo a los caracteres c1, c2 y c3

#Pedir datos por teclado
También es muy común que en la ejecución del programa se requiera la introducción de texto por parte del usuario, 
por ejemplo, para asignar el valor de alguna variable. Para ello se utiliza la sentencia read, seguida del nombre de la variable 
en la cual se va a almacenar el texto introducido por STDIN. Ejemplo:
echo -n "Introduce tu edad"  # El -n es para que no realice salto de línea
read edad
echo “Tienes $edad años”
Esta opción te permitirá introducir el texto de salida informando al usuario, sin echo.
read -p "Introduce tu edad" edad

#Operadores de comparación de cadenas de texto
= (o ==) --> Las cadenas son iguales
!= --> Las cadenas son distintas
< --> La primera cadena es mas larga que la segunda
> --> La primera cadena es mas corta que la segunda
-n --> La cadena es NO nula y tiene longitud mayor a cero
-z --> La cadena es nula (longitud cero)

NOTA: Los símbolos > y < tienen significado especial en el shell, por lo que van entre comillas o precedidos del símbolo \

#Operadores de comparación numéricos
-lt --> Less Than
-le --> Less Than or Equal
-eq --> Equal
-gt --> Grater Than
-ge --> Grater Than or Equal
-ne --> Not Equal

#Operadores sobre ficheros
-a --> existe
-d --> es un directorio
-f --> es un fichero regular
-r --> podemos leerlo
-s --> NO esta vacío
-w --> tenemos permiso de escritura
-x --> tenemos permiso de ejecución (búsqueda si es un directorio)

#While contador
contador=0
while [ contador -lt 10 ];do
    echo "El contador es $contador"
    let contador=contador+1
done

#FOR estilo C
for (( i=1; i<=5; i++ ))
do  
  echo "Numero $i"
done

#Sentencia 'break'
Se detiene un bucle utilizando la palabra break. 
Detener un bucle significa salirse de él y dejarlo todo como está para 
continuar con el flujo del programa inmediatamente después del bucle.

for ciudad in Manila Bangkok Yakarta Kuala Lumpur
do
if [ "$ciudad" = 'Yakarta' ]; then
    		break
  	fi
  	echo "ciudad: $ciudad"
done

#Lectura de archivo linea a linea
El bucle while es muy utilizado para leer un archivo línea a línea. Ejemplo:

while read -r line 
do 
echo "$line" 
done < input_file 

Reemplaza input_file por el nombre y ruta del archivo del que quieras leer.
El parámetro -r en el comando read hace que no se interpreten los caracteres escapados (con \).

#COLORES
NONE=’\e[0m’
GREEN=’\e[0;32m’
echo -e “This text is ${GREEN}green${NONE}”

#Funciones
##Forma 1
function_name(){
    commands
}

##Forma 2
function function_name {
  commands
}

# Definición de función
hola_mundo () {
   echo 'hola, mundo'
}

# Llamada a la función
hola_mundo
hola_mundo

#Paso de argumentos a una función
Para pasar cualquier número de argumentos a la función Bash, simplemente debemos colocarlos justo después del nombre de la función,
 separados por un espacio (al igual que se hace en la llamada a un script).
Los parámetros pasados son $1, $2, $3 ... $n, según la posición del parámetro después del nombre de la función.
La variable $0 está reservada para el nombre de la función.
La variable $# contiene el número de parámetros / argumentos posicionales pasados a la función.
La variable $* o $@ contiene todos los parámetros / argumentos posicionales pasados a la función.

#BUENAS PRÁCTICAS - INCLUIR AYUDA
Todos los scripts o programas suelen incluir una ayuda que se imprime si el script es invocado con la opción -h o la opción - - help.

Es una buena práctica que en tus scripts incluyas una función que muestre información sobre el script, qué hace, qué parámetros recibe, etc.

##Ejemplo:
for arg in "$@"
do
    if [ "$arg" == "--help" ] || [ "$arg" == "-h" ]
    then
        echo "Help argument detected."
        # cat ayuda.txt
    fi
done

##################################################################### FIN #####################################################################