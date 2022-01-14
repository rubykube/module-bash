#!/bin/bash

search() {
    for file in $@; do
        path=$(ls -R . | egrep ${file})
        if [ -z "${path}" ]; then
            echo "the searched PATH is unexisting"
        else
            echo "${path}"
        fi
    done
}

search $1