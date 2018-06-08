#!/bin/bash

input="$@"

if [[ -n "$input" ]]; then
  finded=$(find -name $input)
  output=$(ls -Rd $finded)
  echo $input
  echo "$output"
fi  
