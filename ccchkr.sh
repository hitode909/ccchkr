#!/bin/bash

cd /src/

# XXX: run twice to save result.json and check limit.
jscpd $* --output /tmp/result.json --reporter json >& /dev/null
jscpd $* --reporter json --limit $LIMIT
if [ $? -eq 0 ]; then
  STATUS='success'
else
  STATUS='error'
fi

PERCENT=$(cat /tmp/result.json | jq -r '.statistics.percentage')

DESCRIPTION="Found $PERCENT% duplicated lines. limit: $LIMIT%"

DATA_JSON=`jo context="jscpd $*" state="$STATUS" description="$DESCRIPTION"`
curl -k -X POST --data "$DATA_JSON" -H "Authorization: token $PERSONAL_ACCESS_TOKEN" "$COMMIT_ENDPOINT"
