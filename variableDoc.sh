#!/bin/bash
# Author: Himura Kenji
# Fecha: 03/December/2015
# Description: Variable locales y globales.
# Contacto: himuraxkenji1994@gmail.com

Variable="I'm Global"

function bash {
 local Variable="I'm Local"
 echo $Variable
}

echo $Variable
bash
echo $Variable

