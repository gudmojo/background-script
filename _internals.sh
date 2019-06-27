#!/bin/bash
set -euxo pipefail

###############################################################################
# This script is the middle layer, it redirects all output to a log file.
###############################################################################

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if ! which ts; then
  echo "ts is not installed. Please apt install moreutils"
fi

$DIR/job.sh 2>&1|ts > $DIR/job.log
