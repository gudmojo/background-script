#!/bin/bash
set -euxo pipefail

###############################################################################
# This script is the outermost layer, called by the user.
# It starts the job you define in job.sh and puts it into the background.
###############################################################################

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
$DIR/_internals.sh &
sleep 5
disown
