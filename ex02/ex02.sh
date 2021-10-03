#!/bin/bash

input=$( echo $1 | tr "; " "\n" )

for i in $input
do
ls -R | grep -Fi $i || echo "the searched PATH is unexisting"
done
