#!/bin/bash

declare -i a b;
a=10; b=5
b+=$a;
declare -r b;
b=0

unset b
name="jone"
last="doe"
echo ${#last}
name+=$last
echo $name
