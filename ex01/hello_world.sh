#! /bin/bash

function hello_world() {
  name="World"
  if [ "$1" ]
  then
    name="$1"
  fi

    echo "Hello, $name!"
}

hello_world $1
