#!/bin/bash

function office()
{
    vi $1;      # $1 refer to the first argument.
}

office note.doc


dir ()
{
    ls -lF --color=auto --color=always "$@" | less -r
}


