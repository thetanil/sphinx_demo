#!/bin/bash

set -e

ARTIFACT_DIR=".artifacts"
ARTIFACT_PATH="${ARTIFACT_DIR}/1/build.zip/_build.zip.gz__"
ZIP_PATH="${ARTIFACT_DIR}/build.zip"

if [ -f "$ARTIFACT_PATH" ]; then
    gunzip -c $ARTIFACT_PATH > $ZIP_PATH
    unzip $ZIP_PATH -d "$ARTIFACT_DIR"
    python3 -m http.server --directory "${ARTIFACT_DIR}/_build/"
else
    echo "build file not found!"
    ls "${ARTIFACT_PATH}"
fi
