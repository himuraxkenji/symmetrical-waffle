#!/bin/bash
clear
echo -n "Ingresa el dominio: "
read dominio

if [ -z $dominio ]; then
	echo "No ingresaste ningun dominio"
	exit
fi

wget -q $dominio/robots.txt

cat robots.txt | grep 'Disallow' |  awk '{print $2}' > oculto.txt
cat oculto.txt

firefox &
sleep 3

for i in $(cat oculto.txt); do
	firefox -new-tab www.$dominio &
	sleep 1
done
