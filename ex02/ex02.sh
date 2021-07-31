#!/bin/bash

grep=$( ls -R | grep "$1" & ls -R | grep "$2")
grep1=$(ls -R | grep "$1")

if [ $# -eq 2 ]; then
        if [ "$grep" ]; then
         echo "$grep"
        else echo "the searched PATH is unexisting"
        fi

elif [ "$grep1" ]; then
        echo "$grep1"
        else echo "the searched PATH is unexisting"
fi
