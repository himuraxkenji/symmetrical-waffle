#!/bin/bash

detectar_dispositivos() {
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo "Hay un dispositivo conectado a la red con el ip $i"
        echo "Equipo con ip: $i" >> equipos.txt
}

#ifconfig 'wlp2s0' | grep 'inet ' | awk '{print $2}' | cut -d'.'  -f 1,2,3 > ipEquipo.txt
#ip=cat ipEquipo.txt
for i in 192.168.1.{1..254}; do
	detectar_dispositivos $i &
done
echo "Fin script"
