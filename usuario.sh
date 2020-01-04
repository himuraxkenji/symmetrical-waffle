#!/bin/bash
clear
usuario=$(whoami)
lineas="==========================================================="
echo
echo $lineas
echo "Bienvenido al sistema $usuario"
echo $lineas
echo
ping -c4 www.google.com
# wget fb.com 2> /dev/null
echo
echo "Ping completado"
read -p "Presionar enter para continuar"
ifconfig
