#!/bin/bash

for N in $1; do
	if [ "$(ls -R . | grep "$N")" != "" ]; then
		printf "`ls -R . | grep "$N"`\n"
	else
		printf "the searched PATH is unexisting"
	fi
done
