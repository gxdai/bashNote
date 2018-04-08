#!/bin/bash

output=""
until (($# == 0))
do 
    output="$1 $output"
    shift
done
echo $output
