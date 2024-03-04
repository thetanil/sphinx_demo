#!/bin/bash

set -e

# check if the tmp directory exists
if [ -d "tmp" ]; then
    rm -rf tmp
fi

# create the tmp directory
mkdir tmp

# run act with args supplied to this script
act -j build --action-offline-mode --artifact-server-path tmp
