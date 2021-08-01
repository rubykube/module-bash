patterns=("$@")
for pattern in ${patterns[@]}; do
  isfound=0

  while read line ; do 
    if [[ $line == *"$pattern"* ]] ; then
      isfound=1
      echo $line
    fi
  done < <(ls -R)  # careful with the syntax

  if [[ $isfound == 0 ]] ; then
    echo 'the searched PATH is unexisting'
  fi
done
