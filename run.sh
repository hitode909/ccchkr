#!/bin/sh
set -e

source=$1
shift

docker run -it --rm --volume $source:/src/:ro -e PERSONAL_ACCESS_TOKEN=$PERSONAL_ACCESS_TOKEN -e COMMENT_API_ENDPOINT=$COMMIT_ENDPOINT -e LIMIT=$LIMIT hitode909/ccchkr ccchkr.sh $*
