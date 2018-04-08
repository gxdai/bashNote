#!/bin/bash
## example to go through all files in the current directory

# for file in $(ls -a ./)
for file in * .*
do echo $file; echo '$$'
done

for (( i = 0; i < 9; i++))
do echo $i
done


