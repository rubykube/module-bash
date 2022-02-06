#! /bin/bash

for file in $@;
do
  path=$(ls -R ./ | egrep ${file})
  if [ -z "${path}" ]
  then
    echo "Path doesnot exist"
  else
    echo "${path}"
  fi
done
