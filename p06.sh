#!/bin/bash
#Script p06.sh Marc Rubio Lopez
function demanar_fitxer {
if [[ $EUID -ne 0 ]]; then
   echo
   exit 1
fi
	echo -n
	read fitxer

	ruta=
	ruta=${ruta}${archivo}

	if [ -f $ruta ]
	then
		sudo cat $ruta | grep
		exit 0
	else
		echo
"Error: El fitxer demanat no existeix:"
		exit 1
	fi

	}

clear
