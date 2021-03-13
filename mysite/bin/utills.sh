#!/usr/bin/env bash
DIR_LOCAL=$( dirname "${BASH_SOURCE[0]}" )
ROOT_LOCAL="$DIR_LOCAL/.."
OS=$(uname)
echo $OS

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
ABSDIR="$(dirname "${ABSOLUTE_PATH}")"
ABSROOT="$(dirname "${ABSDIR}")"

source "${ROOT}/bin/utils/shellUtils.sh"

function exit_on_error {
    if [ $1 -ne 0 ]
    then
        e_error "${RED}TESTS HAVE FAILED${NC} EXIT_STATUS: $1\n"

        exit $1;
    fi
}

function echo_on_error {
    if [ $1 -ne 0 ]
    then
       e_error "${RED}TESTS HAVE FAILED${NC} EXIT_STATUS: $1\n"
    fi
}
