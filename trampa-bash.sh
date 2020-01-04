#!/bin/bash
# Descripcion: Una trampa permite que no se pare la ejecucion en bash

trap bashtrampa INT #Comando para la trampa de bash
clear;

bashtrampa() {
	echo "Se ha detectado la combinacion de teclas CTRL+C!!!"	
}

for i in `seq 1 10`; do
	echo "Contador $i/1 Para la salida de la trampa"
	sleep 1;
done

echo 
echo "Saliendo del Script"
