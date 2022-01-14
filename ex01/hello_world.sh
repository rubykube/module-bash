#!/bin/bash
hello_world() {
    name="World"
    if [ -n "$1" ]; then
        name="$1"
    fi

    echo "Hello, $name!"
}

hello_world $1