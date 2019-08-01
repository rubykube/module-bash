#!/bin/bash

if [ $# -lt 1 ];
then
    echo "Hello, World!"
else
    echo "Hello, $1!"
fi
exit 0
