#!/bin/bash

set -e

ARTIFACT_PATH="tmp/1/build.zip/_build.zip.gz__"
ZIP_PATH="tmp/build.zip"

# check if the tmp directory exists
if [ -f "$ARTIFACT_PATH" ]; then
    echo "build file found!"
    # unzip the build file
    gunzip -c $ARTIFACT_PATH > $ZIP_PATH
    unzip $ZIP_PATH -d tmp
    # rm $ZIP_PATH
    python3 -m http.server --directory tmp/_build/
else
    echo "build file not found!"
fi
