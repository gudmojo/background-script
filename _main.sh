#!/bin/bash
set -euxo pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if ! which ts; then
  echo "ts is not installed. Please apt install moreutils"
fi

$DIR/_job.sh 2>&1|ts > $DIR/job.log
