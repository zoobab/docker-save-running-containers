#!/bin/bash

set -e
set -u

ALLPS=$(docker ps | awk '{ print $1"|"$2 }' | grep -v CONTAINER )
for i in $ALLPS; do
    CTID=$(echo $i | cut -d '|' -f1)
    IMAGE=$(echo $i | cut -d '|' -f2)
    REPO=$(echo $IMAGE | cut -d ':' -f1)
    TAG=$(echo $IMAGE | cut -d ':' -f2)
    DISTROVER=$(echo $TAG | cut -d '-' -f1)
    TIMESTAMP=$(echo $TAG | cut -d '-' -f2)
    TIMESTAMP_NOW=$(date +"%m%d%y_%H%M%S")
    echo "Saving running CTID $CTID to $REPO:$DISTROVER-$TIMESTAMP_NOW"
    docker commit $CTID $REPO:$DISTROVER-$TIMESTAMP_NOW
done
