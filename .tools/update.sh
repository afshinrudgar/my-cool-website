#!/bin/bash

set -e
echo "Running daily update"
echo "Date: $(date)"

SOURCE="parisaspace.framer.website"
TARGET="$(pwd)"

echo "Downloading $SOURCE to $TARGET"

wget \
    -mpEk \
    --no-host-directories \
    --directory-prefix $TARGET \
    $SOURCE

echo "Finished downloading at $(date)"