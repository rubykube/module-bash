 
 for name in $1 do 
	path=$(ls -R ./ | grep $name)
	if [-z "$path"];
	   then echo "Path doesn't exist :("
	else echo "${path}" 
	fi
 done