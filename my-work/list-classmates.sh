#!/bin/bash

set -e

# move into the people dir from my-work
cd ../people

# look for this file
target_file="README.md"

# loop through the dirs and find the target file
for dir in $( find . -type d); do
  if [ -f "$dir/$target_file"]: then
     # echo "$dir/$target_file":
     name=`head -n 1 "$dir/$target_file"`
     echo $name
  fi
done



