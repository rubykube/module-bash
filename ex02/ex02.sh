#!/etc/bash

if [[ -z "${1}" ]]; then
    echo "Wrong number of arguments: expected 1, given 0" 1>&2
    exit 1
fi

for element in ${1}; do
    paths=`ls -R ./ | grep ${element}`
    if [[ -z "${paths}" ]]; then
        echo "the searched PATH is unexisting"
    else
        echo "${paths}"
    fi
done

