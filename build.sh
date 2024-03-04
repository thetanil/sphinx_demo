#!/bin/bash
set -e

ARTIFACT_DIR=".artifacts"

if [ -d "$ARTIFACT_DIR" ]; then
    rm -rf "$ARTIFACT_DIR"
fi
mkdir "$ARTIFACT_DIR"
act -j build --action-offline-mode --artifact-server-path "$ARTIFACT_DIR"
