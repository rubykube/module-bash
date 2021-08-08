#!/bin/bash

#Function just say "Hello, World!"
function hello {
    if [ -n "$1" ]; then
        echo "Hello, $1!"
    else
        echo "Hello, World!"
    fi
}

hello $1
