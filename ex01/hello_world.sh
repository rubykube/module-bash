#!/bin/bash
if [[ $1 = "" ]] ; then
    echo "Hello, World!"
else
    echo "Hello, ${1}!"
fi
