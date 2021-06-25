#! /usr/bin/env bash
set -e

check_file() {
    local file=$1
    kustomize build "$file" -o /dev/null
    return $?
}

export -f check_file

check_files() {
    local all_files=( "$@" )
    has_error=0
    uniq=( $(printf '%s\n' "${all_files[@]%/*}" | sort -u) )
    toprocess=()
    for file in "${uniq[@]}" ; do
        if [[ -f $file/kustomization.yaml ]]; then
            echo "Testing $file"
            toprocess+=( "$file" )
        fi
    done
    if [ ${#toprocess[@]} -gt 0 ]; then
        printf '%s\0' "${toprocess[@]}" | xargs -0 -I {} -P 5 bash -c 'check_file "{}"'
        has_error=$?
    fi
    return $has_error
}

if ! check_files "$@" ; then
    echo "To ignore, use --no-verify"
fi

exit $has_error
