#!/bin/bash
## check and set command-line arguments
if [[ $# > 2 || $# < 1 ]]
then
    echo usage: "$0 [ from-file ] to-file"
    exit 1;
# if the arguments nubmer is not 2 or 1, it displays an error message and terminates the script with an abnormal exit status 1.
elif [[ $# == 2 ]]
then
    from="$1"
    to="$2"
else
    to="$1"
fi
