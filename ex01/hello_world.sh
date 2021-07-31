#!/bin/bash
########################
# Prints "Hello, World!"
# Arguments:
#   Name
# Outputs:
#   Hello, World!
#   Hello, "Someone's name"!
########################
function hello_world() {
  local name
  [[ -n $1 ]] && name="${1^}" || name="World"
  echo "Hello, ${name}!"
}

hello_world $1
