#!/bin/bash

echo "Ingrese una opcion"

echo "1 - Limpiar pantalla"
echo "2 - Mostrar ruta actual"
echo "3 - Mostrar historial de comandos"
echo "4 - Salir"
echo
echo "Seleccionar Opcion: "
read opcion

case $opcion in

1) clear;;
2) pwd;;
3) history;;
4) exit;;
*) echo "Opcion no valida"
esac
