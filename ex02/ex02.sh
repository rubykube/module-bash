patterns="$@"
matches=0

records=$(ls -R)

for pattern in $patterns; do		
	for row in $records; do
		if [[ $row == *"$pattern"* ]]; then
			matches=$((matches+1))
			echo $row
		fi
	done
done

if [[ $matches == 0 ]]; then
	echo "the searched PATH is unexisting"
fi
