#!/bin/bash

output=$1 
if [ "$output" = "Alice" ]; 
then
  echo "Hello, Alice!"
elif  [ "$output" = "Bob" ];
then
  echo "Hello, Bob!"
else 
  echo "Hello, World!"
fi  

