if [ -z $1 ]
then 
  exit 1
fi

for param in $@
  do
    if [[ $param == $1 ]]
    then 
      continue
    fi
    echo "$param $(grep $param $1 -c)"
    grep -n "$param" $1 | cut -d : -f 1
  done
