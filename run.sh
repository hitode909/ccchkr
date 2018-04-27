#!/bin/sh
set -e

source=$1
shift

docker run -it --rm --volume $source:/src/:ro -w /src/ ccchkr ccchkr.sh $*
