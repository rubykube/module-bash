#!bash

for i in ${@}; do
  ls -R | grep ${i} || echo "the searched PATH is unexisting"
done
