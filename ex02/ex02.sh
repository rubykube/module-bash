#!/bin/bash/

function rec_search {
  for file in $1; do
    paths=`ls -R ./ | grep $file`
    if [[ -z $paths ]]; then
        echo "the searched PATH is unexisting"
    else
        echo $paths
    fi
  done
}

rec_search $1
