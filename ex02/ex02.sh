#!/usr/bin/env bash
arguments=$1

for argument in $arguments
do
    output=`ls -R | grep $argument`
    if [ -z "$output" ]
    then
        echo the searched PATH is unexisting
    else
        for path in $output
        do
            echo $path
        done
    fi
done
