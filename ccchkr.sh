#!/bin/sh
set -e

repository=$1
echo $repository
git clone $repository src
cd /src/
jscpd $*
