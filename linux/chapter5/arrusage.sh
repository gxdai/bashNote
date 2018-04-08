#!/bin/bash

br=()       # empty array
fruits=("red apple" "golden banana")
fruits+=("navel orange")        # array concatenation
echo ${fruits[0]}       # value of golden banana
echo ${#fruits[*]} or ${#fruits[@]} # length of array
fruits[2]="golden pear" # element assignement
fruits[6]="seedless watermelon" # gap index
br+=( "${fruits[@]}" )      # br now same as fruits

# To go through an array
for el in "${fruits[@]}"
do
    ...
done

# if index is consecutive
for (( i=0; i < ${#br[@]}; i++))
do
    ...
done
