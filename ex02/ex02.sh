#!/etc/bash

if [ -z "$1" ]; then
    echo "Wrong number of arguments: expected 1, given 0"
else
    for element in $1
    do
        RESPONSE=`ls -R ./ | grep $element`
        if [ -z "$RESPONSE" ]; then
            echo "the searched PATH is unexisting"
        else
            echo "$RESPONSE"
        fi

    done
fi
