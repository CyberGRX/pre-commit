#!/bin/sh

for var in "$@"; do
    if [ -f "$var" ]; then
        eslint --fix --quiet --config /.eslintrc.js --quiet --format codeframe "$var"
    else
        echo "$var was not a file, skipping format"
    fi
done
