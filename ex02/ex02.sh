#! /bin/bash

for file in $1
do
	path=$(ls -R ./ | grep ${file})
	if [ -z "${path}" ]
        then
		echo "the searched PATH doesn't exist"
        else
     		echo "${path}"
        fi
done