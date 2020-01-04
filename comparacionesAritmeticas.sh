#!/bin/bash
echo "Ingrese un numero: "
read numero1

echo "Ingrese otro numero: "
read numero2

if [ $numero1 -eq $numero2 ]; then
	echo "Los numeros ingresados son iguales"
elif [ $numero1 -gt $numero2 ]; then
	echo "El primero numero es mayor que el segundo"
else
	echo "El 1er numero es menor que el 2do"
fi
