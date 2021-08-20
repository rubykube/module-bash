#!/bin/bash
#
#Outputs "Hello, World"

##########################################
# Outputs "Hello, World"
# Arguments:
#   Name to greet
# Outputs:
#   Writes "Hello, World" if no 
#   arguments passed
#   or "Hello, [name]"
#   to stdout
##########################################
output_hello_world() {
    if [[ -n "${1}" ]]; then
        echo "Hello, ${1}!"
    else
        echo "Hello, World!"    
    fi        
}

output_hello_world $1