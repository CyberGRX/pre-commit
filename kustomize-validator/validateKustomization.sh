#! /usr/bin/env bash
set -e

check_folder() {
    local folder=$1
    local error=0
    # local error_msg=$(kustomize build "$folder" -o /dev/null 2>&1)
    { error_msg="$( { kustomize build "$folder" -o /dev/null; } 2>&1 1>&3 3>&- )"; } 3>&1;
    error=$?
    if [[ ${error} -gt 0 ]]; then
        echo "Build failure in ${folder}"
        echo $error_msg | fold -s -w 160 | awk '{ print "\t" $0 }'
    fi
    return $error
}

export -f check_folder

check_files() {
    local all_files=( "$@" )
    has_error=0
    uniq=( $(printf '%s\n' "${all_files[@]%/*}" | sort -u) )
    toprocess=()
    for file in "${uniq[@]}" ; do
        if [[ -f $file/kustomization.yaml ]]; then
            toprocess+=( "$file" )
        fi
    done
    if [ ${#toprocess[@]} -gt 0 ]; then
        printf '%s\0' "${toprocess[@]}" | xargs -0 -I {} -P 25 bash -c 'check_folder "{}"'
        has_error=$?
    fi
    return $has_error
}

if ! check_files "$@" ; then
    echo "To ignore, use --no-verify"
fi

exit $has_error
