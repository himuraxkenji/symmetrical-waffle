#!/bin/bash

echo "Informacion del sistema"
echo
echo "Estado de memoria ram"
free
echo
echo "Uso del disco duro"
df -h
echo
echo "Version del sistema"
cat /proc/version
echo
echo "Version de esta distro"
cat /etc/issue
