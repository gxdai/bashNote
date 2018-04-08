#!/bin/bash
## Finds a given command on the search path

cmd="$1"    # the command to find
path=$(echo $PATH | tr ":" " ")
for dir in $path
do
    if [[ -x "$dir/$cmd" ]]     # -x file exist and executable
    then
        echo "FOUND: $dir/$cmd"
        exit 0
    fi
done
echo "$cmd not on $PATH"


for file in *       ## for each file in current folder
do if grep -q "$1" $file        ## if pattern $1 is in $file
then                            ## invoke nan on $file
    vi $file
fi
done
