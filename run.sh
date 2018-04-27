#!/bin/sh
set -e

source=$1
shift

docker run -it --rm --volume $source:/src/:ro -e PERSONAL_ACCESS_TOKEN=$PERSONAL_ACCESS_TOKEN -e COMMENT_API_ENDPOINT=$COMMENT_API_ENDPOINT ccchkr ccchkr.sh $*
