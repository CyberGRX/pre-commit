#!/bin/sh	

for var in "$@"; do	
    if [ -f "$var" ]; then	
        prettier --write --no-config -c /usr/local/lib/node_modules/@cybergrx/prettier-config/index.json "$var"
        eslint --config --no-eslintrc /usr/local/lib/node_modules/@cybergrx/eslint-config/index.js --fix --quiet --format codeframe --resolve-plugins-relative-to /usr/local/lib/node_modules "$var"
    else	
        echo "$var was not a file, skipping format"	
    fi	
done	
