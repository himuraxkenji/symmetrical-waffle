#!/bin/bash

echo "Escribe una palabra: "
read texto1
echo "Escribre otra palabra: "
read texto2

if [ "$texto1" == "$texto2" ]; then
	echo "Las palabras son iguales"
elif [ "$texto1" != "$texto2" ]; then
	echo "Las palabras ingresadas son diferentes"
fi

if [ -n $texto1 ]; then
	echo "Cadena 1 no vacia"
fi
if [ -z $texto2 ]; then
	echo "Cadena 2 vacia"
fi

if [[ "$texto1" < "$texto2" ]]; then
	echo "Cad 1 menor que Cad 2"
else
	echo "Cad 2 menor que Cad 1"
fi

