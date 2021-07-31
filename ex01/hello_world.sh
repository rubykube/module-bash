#!/bin/bash
target="World"
if [ "$1" != "" ]
then
	target="$1"
fi

echo "Hello, $target!"
