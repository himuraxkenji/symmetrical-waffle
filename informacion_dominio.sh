#!/bin/bash
clear
echo -n "Ingresa el dominio del cual deseas obtener informacion: "
read dominio

if [[ -z $dominio ]]; then
	echo "No ingreso ningun dominio"
	exit
fi
echo
echo "Comenzando la recoleccion de infomacion del dominio $dominio"
echo 
read -p "Presionar enter para continuar"

firefox -new-tab https://intodns.com/$dominio 
sleep 1
firefox -new-tab https://tools.dnsstuff.com/#dnsReport|type=domain&&value=$dominio
sleep 1
firefox -new-tab https://mxtoolbox.com/SuperTool.aspx?action=mx:$dominio&newAppVersion=1 
