#!/bin/bash

# $1: the root directory of UCF101
# $2: frame per second

for folder in $1/*; do
    for file in "$folder"/*.avi; do
        if [[ ! -d "${file[@]%.avi}" ]]; then
            mkdir -p "${file[@]%.avi}"
        fi
        ffmpeg -i $file -vf fps=$2 "${file[@]%.avi}"/%05d.jpg

        rm $file
    done
done

            

