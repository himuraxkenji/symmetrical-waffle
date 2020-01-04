#!/bin/bash
# Author: Himura Kenji
# Fecha: 03/December/2015
# Description: Ingreso de Cadena de Texto
# Contacto: himuraxkenji1994@gmail.com

echo -e "Ingresar una palabra: "
read palabra
echo -e "La palabra ingresada fue: $palabra"
echo -e "Ingresa 2 palabras"
read palabraUno palabraDos
echo -e "Palabras: \"$palabraUno\" \"$palabraDos\""
echo -e "Escribe varias palabras"
read -e #Hay una variable por default llamada REPLY
echo -e "Palabras escritas: $REPLY" #Aqui se imprime lo que esta en REPLY
echo -e "Menciona tus tres herramientas favoritas de desarrollo: "
read -a herramientas
echo "Tus herramietas favoritas son: ${herramientas[0]}, ${herramientas[1]} y ${herramientas[2]}"
