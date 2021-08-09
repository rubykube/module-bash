#!/bin/bash

 for a in $@; do
     if [ -n $a ]; then
         path=`ls -R | grep $a`
         if [ $? -eq 0 ]; then
             echo $path
         else
             echo "the searched PATH is unexisting"
         fi
     fi
 done

