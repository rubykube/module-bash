for i in $*
do
	ls -R | grep -Fi $i || echo 'the searched PATH is unexisting'
done



