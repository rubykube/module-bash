#!/bin/bash
#
#recursive search script

for pattern in $@; do
	path=$(ls -R ./ | egrep $pattern)
	if [[ -z "$path" ]]; then 
		echo "the searched PATH is unexisting"
	else
		echo "$path"
	fi
done	
