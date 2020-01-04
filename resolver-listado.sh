#!/bin/bash
clear
echo -n "Ingresa la ruta del archivo donde se encuentran las paginas: "
read ruta

if [ -z $ruta ]; then
	echo "No ingreso ninguna ruta"
	exit
fi

if [ ! -f $ruta ]; then
	echo "Archivo inexistente o ruta erronea"
	exit
fi

echo "Leyendo el archivo $ruta"
read -p "Presiona enter para continuar"

firefox &
sleep 3

for i in $(cat $ruta); do
	firefox -new-tab https://www.intodns.com/$i
	sleep 1
done

