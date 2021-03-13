#!/usr/bin/env bash
DIR=$( dirname "${BASH_SOURCE[0]}" )
ROOT="$DIR/../.."

echo "ROOT: ${ROOT}, DIR: ${DIR}";

source "${ROOT}/bin/utills.sh"

cd "${ROOT}/mysite-web"
pwd

ng lint
exit_on_error $?

