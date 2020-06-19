#!/bin/sh

for var in "$@"; do
    if [ -f "$var" ]; then
        terraform fmt -write=true "$var"
    else
        echo "$var was not a file, skipping format"
    fi
done
