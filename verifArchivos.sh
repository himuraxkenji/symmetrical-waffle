#!/bin/bash

echo "Escribe el nombre del archivo a verificar: "
read archivo

if [ -a $archivo ]; then
	echo "El archivo existe"
	if [ -x $archivo ]; then
		echo "El archivo es ejecutable"
	fi
	if [ -d $archivo ]; then
		echo "Es un directorio"
	fi
else
  echo "archivo o carpeta no existente"
fi
