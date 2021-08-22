#!/usr/bin/env bash

for n in $1; do
    ls -R | grep $n
    if [[ $? != 0 ]]; then
        echo "the searched PATH is unexisting"
    fi
done

