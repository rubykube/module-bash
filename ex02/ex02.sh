#!/bin/bash

for path in $(echo $1 | tr " " "\n")
do
	UNEXISTING=true
	for line in $(ls -R .)
	do
		if [[ $line =~ "$path" ]]; then
			echo $line
			UNEXISTING=false
		fi
	done
	if [ "$UNEXISTING" = true ]; then
		echo "the searched PATH is unexisting"
	fi
done
