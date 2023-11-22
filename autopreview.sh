#! /bin/bash

FHASH=`md5sum $1`
while true; do
    NHASH=`md5sum $1`
    if [ "$NHASH" != "$FHASH" ]; then
        ./markdown-preview -file $1
        FHASH=$NHASH
    fi
    sleep 5
done
