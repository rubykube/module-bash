#!/bin/bash


result=''
patern=($1)

match_patern () {
	local path="$1"
	local word="$2"
	local is_finded="$3"

	#echo "$path"
	local dirs=($(ls $1))
	#echo "${dirs[@]}"

	for dir in "${dirs[@]}"
	do
		if [ ! -d "$path/$dir" ]
		then
			if [ "$dir" = "$word" ]; then
				echo "$dir"
				result+="$dir\n"
			fi
			continue
		fi
		

		if [[ "$path/$dir" =~ "$word" ]]
		then
			if [[ "$is_finded" = "false" ]]
			then
				echo "$dir"
				result+="$dir\n"
				is_finded="true"
			fi
			echo "$path/$dir:" 
			result+="$path/$dir:\n"
		fi

		match_patern "$path/$dir" $word $is_finded
		#echo "$path/$dir"
		
		
	done
			 
}
for word in "${patern[@]}"
do
	match_patern '.' $word 'false'
done

result=${result%\\n}

if [ "${#result}" = 0 ]
then
	echo "the searched PATH is unexisting"
else
	result=${result%\\n}
	#echo "$result"
fi
