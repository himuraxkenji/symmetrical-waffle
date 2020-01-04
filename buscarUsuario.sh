#!/bin/bash 

echo "Ingrese el nombre del usuario a buscar: "
read usuario

if grep ^$usuario /etc/passwd; then
	echo "El usuario $usuario si esta en este sistema"
else
	echo "El usuario $usuario no se encuentra en este sistema"
fi

