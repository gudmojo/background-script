#!/bin/bash
set -euxo pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
$DIR/_main.sh &
sleep 5
disown
