if [ -z $2 ]; then
	echo "0"
else 
	if [ $2 -eq $2 ] ; then

		if [	$1 == "-s"	]; then
			shift
			for i in $@
			do 
				let j=$((j+$i))
			done
			echo "$j"
		elif [	$1 == "-m"	]; then
			shift
			for i in $@
			do 
				j=$((j+$i))
					
			done
			echo "$(($j/$#))"
		elif [	$1 == "-e"	]; then
			let j=0
			shift
			for i in $@
			do
				if	[	$(($i%2)) -eq 0	]; then  
					 j=$((j+$i))
				fi
			done
			echo "$j"
		elif [	$1 == "-o"	]; then
			let j=0
			shift
			for i in $@
			do
				if	[	$(($i%2)) -ne 0	]; then  
					 j=$((j+$i))
				fi
			done
			echo "$j"
		else
			echo "Error.."
			exit 1		
		fi
	else 
		echo "Error.."
		exit 1
	fi
fi
