#!/bin/bash
search () {
	for d in $@
    do
			ls -R | awk -v var="$d" '$0 ~ var{print $0}'
    	out=`ls -R | awk -v var="$d" '$0 ~ var{print $0}'`
			if [ -z "$out" ] 
				then
				echo "the searched PATH is unexisting";
			fi
	done
}
search $@
