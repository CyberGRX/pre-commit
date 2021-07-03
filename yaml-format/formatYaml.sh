#! /usr/bin/env bash
set -e

check_file() {
    local file=$1
    local error=0
    { error_msg="$( { yq eval -i "" "$file"; } 2>&1 1>&3 3>&- )"; } 3>&1;
    error=$?
    if [[ ${error} -gt 0 ]]; then
        echo "${file}"
        echo "$error_msg" | fold -s -w 160 | awk '{ print "\t" $0 }'
    fi
    return $error
}

export -f check_file

check_files() {
    local all_files=( "$@" )
    has_error=0
    for file in "${all_files[@]}" ; do
        check_file "$file"
    done
    return $has_error
}

if ! check_files "$@" ; then
    echo "To ignore, use --no-verify"
fi

exit $has_error
