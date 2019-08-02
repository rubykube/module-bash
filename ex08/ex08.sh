#!/bin/bash

if [ -z $1 ] || [ $# -ne 1 ]; then
    echo "Too many(few) arguments"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error.."
    exit 1
fi


res=""
arr=(zeroes, ones, twoes, threes,  fours,  fives, sixs, sevens, eights, nines)
for (( i=0; i<10; i++ ))
do
    res+=$(grep -o $i $1 | wc -l)
    res+=" ${arr[i]} "
done

printf '%s\n' "$res" | sed 's/.$//'
