#!/bin/bash

for pattern in $1; do
    ls -R | grep $pattern
    if [[ $? == 1 ]]; then
        echo 'the searched PATH is unexisting'
    fi
done
