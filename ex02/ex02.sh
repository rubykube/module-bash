#!/bin/bash
#
################################
# Find paths by FULL WORDS
# Arguments:
#   String containing FULL WORDS
#     separated by space
# Outputs:
#   Writes found relative paths
################################
function find_by_pattern() {
  for name in $1; do
    ls -R | egrep $name
    if [[ $? != 0 ]]; then
        echo "the searched PATH is unexisting" >&2
    fi
  done
}

find_by_pattern "$1"
