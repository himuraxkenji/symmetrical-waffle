#!/bin/bash
clear
echo "Ingrese la pagina a obtener los dominios: "
read pagina

if [ -z $pagina ]; then
	echo "No ingreso una pagina"
	exit
fi

wget -q $pagina
grep 'href=' index.html | cut -d"/" -f3 | grep cnn | sort -u > dominios.txt

for i in $(cat dominios.txt); do
	host $i
done
