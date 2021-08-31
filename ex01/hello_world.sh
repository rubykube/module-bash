#!/bin/bash
#
#Hello, World! script

if [[ -z "$1" ]]; then
	echo "Hello, World!"
else
	echo "Hello, $1!"
fi

