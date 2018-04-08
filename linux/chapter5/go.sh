#!/bin/bash

## displays fortune until the user quits

go="yes"

while [[ "$go" == "yes" ]]
do
    /usr/games/fortune
    echo -n "*** More fortune? [yes/no]:"
    read go
done
