#!/bin/bash

for ((i=0; i<=$#; i++));
do
{
    if [[ ! -f "$1" ]];
    then
        exit 1
    fi
    echo $(awk 'END{ print NR }' "$1") $1
    shift
}
done

exit 0
