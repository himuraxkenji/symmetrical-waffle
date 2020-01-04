#!/bin/bash
clear
echo -n "Ingresa el nombre de la persona que estas buscando"
read nombre
if [ -z $nombre ]; then
	echo "No ingresaste el nombre"
	exit
fi
echo
echo -n "Ingresa el apellido de la persona que estas buscando"
read apellido
if [ -z $apellido ]; then
	echo "No ingresaste el apellido"
	exit
fi
echo
echo "Comenzando la busqueda de $nombre $apellido..."
read -p "Presiona enter para continuar"

firefox https://www.pipl.com/search/?q=$nombre+$apellido & 
sleep 1
firefox -new-tab http://www.411.com/name/$nombre-$apellido
sleep 1
firefox -new-tab http://www.cvgadget.com/person/$nombre/$apellido

