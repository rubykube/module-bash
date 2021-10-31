#!/bin/bash

for file in $1
do
   path=$(ls -R ./ | grep ${file})
   if [ -z "${path}" ];
   
   then echo "the searched PATH is unexisting"
   else echo "${path}"
   
   fi
done

