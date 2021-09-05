#!/bin/bash
if [ $@ ]; then
	echo "Hello, $@!"
else
	echo "Hello, World!"
fi
