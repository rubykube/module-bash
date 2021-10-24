#!/bin/bash

input_array=$(echo ${1} | tr ";" "\n")

for i in $input_array
do
  result="$(ls -R | grep "${i}")"
  if [[ -n "$result" ]]; then
    echo "$result"
  else
    echo "the searched PATH is unexisting"  
  fi
done

