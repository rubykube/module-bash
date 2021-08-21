#!/bin/bash
#
############################################
# Recursive file search
# Arguments:
#   ONLY FULL WORDS (e.g. FIND, FOLDER, etc)
# Outputs:
#   all directories below the current 
#   working directory, which have a relative
#   path, that matches the pattern
############################################
for file in $1
do
   path=$(ls -R ./ | grep ${file})
   if [ -z "${path}" ]; then
      echo "the searched PATH is unexisting"
   else
      echo "${path}"
   fi
done

