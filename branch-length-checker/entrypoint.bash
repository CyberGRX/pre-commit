#!/bin/bash
branch_length="$(git rev-parse --abbrev-ref HEAD | tr -d '\n' | wc -c)"
max_length=40
if [ $branch_length -gt $max_length ] ; then
    echo "Your branch name should be less than $max_length characters to guarantee a namespace deploy"
    exit 1
fi
