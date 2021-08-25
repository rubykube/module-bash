for name in $1; do
    ls -R | egrep $name
    if [[ $? != 0 ]]; then
        echo "the searched PATH is unexisting" >&2
    fi
  done
