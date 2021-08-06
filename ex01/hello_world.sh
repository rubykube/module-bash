#!/bin/bash

function hello_world(){
	if [ -z "$1" ]
	then
		echo "Hello, World!"
	else
		echo "Hello, $1!"
	fi
}

hello_world $1

