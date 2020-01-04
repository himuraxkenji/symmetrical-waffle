#!/bin/bash
clear
echo -n "Ingrese la ruta del archivo que contiene los dominios que requieres: "
read ruta 

if [ -z $ruta ]; then 
	echo "No ingresaste la ruta"
	exit
fi
echo

if [ ! -f $ruta ]; then
	echo "Archivo inexistente"
	exit
fi
echo
echo "Leyendo el contenido del archivo que esta en $ruta "
read -p "Presiona enter para continuar"

firefox & 
sleep 3

for i in $(cat $ruta); do
	firefox -new-tab $i
	sleep 1
done

