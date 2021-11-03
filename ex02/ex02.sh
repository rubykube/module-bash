#!/bin/bash

for folder in $1;
do path=$(ls -R ./ | grep $folder)
    if [ -z "$path" ];
        then echo "the searched PATH is unexisting" 
        else echo "$path"
    fi
done
