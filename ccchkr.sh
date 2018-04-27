#!/bin/sh
set -e

cd /src/
RESULT=$(jscpd $*| grep 'duplicated lines out of')
BODY="\`jscpd $* #=> $RESULT\`"
echo $BODY

DATA_JSON=`jo body="$BODY"`
curl -k -X POST --data "$DATA_JSON" -H "Authorization: token $PERSONAL_ACCESS_TOKEN" "$COMMENT_API_ENDPOINT"
