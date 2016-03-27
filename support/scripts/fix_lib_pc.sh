#!/bin/sh

PC_FILE=$1

echo "Fixing libary pc file: ${PC_FILE} ..."

sed -i -r -e "s:-L/[^[:blank:]]+:-L\${libdir}:g" ${PC_FILE}
