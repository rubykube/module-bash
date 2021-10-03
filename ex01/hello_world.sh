#!/usr/bin/env bats
if [ -n "$1" ]; then
echo "Hello, $1!"
else 
echo "Hello, World!"
fi
