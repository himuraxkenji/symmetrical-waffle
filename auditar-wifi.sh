#!/bin/bash

ROJO=$(tput setaf 1)
VERDE=$(tput setaf 2)

echo $VERDE
iwconfig | awk '(NR  == 1) (print "Tu interfaz de red inalambrica es: $1}'
echo -e "\n"
echo "Escribe el nombre de la tarjeta de red de la cual vas a crear un monitr"
echo $ROJO
read tarjeta
airmon-ng start $tarjeta
sleep 2
clear
iwconfig | grep mon
echo $GREEN 
echo "Escribe el nombre de la interfaz que esta en modo monitor"
echo $ROJO
read monitor
xterm -bg black -fg green -geometry 157-37+1+0 -T "Redes wifi disponibles" -e airdump -ng $monitor &
echo $VERDE
echo "Pon el nombre del archivo donde se van a guardar los datos capturados"
echo $ROJO
read nombre
echo $VERDE
echo "Escribe el numero de canal"
