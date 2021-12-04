# !/bin/bash

condition=""
search_paths=$( echo $1 | tr " " "\n" )
# Creating for loop in order to search for paths with " " or "\n"
for search_path in $search_paths
do
    condition=$( ls -R | grep $search_path )
    # If path exists script will print it
    if [ -n "$condition" ]
    then
        echo $condition | tr " " "\n"
    else
        # If path does not exist script will print following string
        echo "the searched PATH is unexisting"
    fi
done
