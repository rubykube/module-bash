#!/bin/bash


IFS=' ' read -r -a arr <<< "$1"
grep=$( ls -R | grep "${arr[0]}" & ls -R | grep "${arr[1]}")
grep1=$(ls -R | grep "${arr[0]}")

#if [ $# -eq 1 ]; then
if [ "${arr[1]}" ]; then
    if [ "$grep" ]; then
        echo "$grep"
    else
        echo "the searched PATH is unexisting"
    fi

    elif [ "$grep1" ]; then
        echo "$grep1"
    else
        echo "the searched PATH is unexisting"
fi
