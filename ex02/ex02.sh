for pattern in $1
do
	g=$( ls -R | egrep "$pattern" )

	if [ "$g" ]
	then
		echo "$g"
	else
		echo "the searched PATH is unexisting"
	fi
done
