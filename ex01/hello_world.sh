#!/bin/bash/

function hello {
  if [[ -z $1 ]]; then
    echo "Hello, World!"
  else
    echo "Hello, $1!"
  fi
}

hello $1
