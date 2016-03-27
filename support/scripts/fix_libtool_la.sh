#!/bin/sh

LA_FILE=$1

echo "Fixing libtool la file: ${LA_FILE} ..."

sed -i -r -e "s:(/[^[:blank:]]+)*/lib([^[:blank:]]+).la:-l\2:g" \
  -e "s:-L(/[^[:blank:]]+)+ ::g" \
  -e "s:libdir='(.*)':libdir=\$LIBTOOL_SYSROOT_PATH'\1':g" \
  -e "s:libdir=[\$]LIBTOOL_SYSROOT_PATH'(/[^[:blank:]]+)*/sysroot/(.*)':libdir=\$LIBTOOL_SYSROOT_PATH'\2':g" \
  ${LA_FILE}
