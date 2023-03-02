#!/bin/bash

# Ruta del archivo de log
LOG_FILE="/usuarios.log"

# Función para mostrar mensajes por pantalla y guardarlos en el archivo de log
logMessage () {
    FECHA=$(date +"%x - %X")
    echo "$FECHA -> $1"
    echo "$FECHA -> $1" >> $LOG_FILE
}

# Verificar que se ejecute el script como root
if [ "$EUID" -ne 0 ]
  then logMessage "Por favor, ejecuta el script como root."
  exit
fi

# Leer el nombre del grupo secundario
if [ -z "$1" ]
  then read -p "Introduce el nombre del grupo secundario: " grupoSecundario
  else grupoSecundario=$1
fi

# Verificar que el grupo secundario existe
if ! grep -q "^$grupoSecundario:" /etc/group
  then logMessage "El grupo secundario $grupoSecundario no existe."
  exit
fi

# Leer los nombres de usuario y DNIs del archivo de texto
while IFS=',' read -r usuario dni || [[ -n "$usuario" ]]
do
    if id -u "$usuario" >/dev/null 2>&1
      then logMessage "El usuario $usuario ya existe."
      continue
    fi
    if ! [[ "$dni" =~ ^[0-9]{8}[a-zA-Z]$ ]]
      then logMessage "El DNI $dni del usuario $usuario no es válido."
      continue
    fi
    password=$dni # La contraseña es el DNI
    groupadd "$usuario"
    useradd -m -s /bin/bash -g "$usuario" -G "$grupoSecundario" "$usuario"
    echo "$usuario:$password" | chpasswd
    logMessage "Se ha creado el usuario $usuario con contraseña $password y grupo secundario $grupoSecundario."
done < usuarios.txt

logMessage "El script ha finalizado correctamente."
