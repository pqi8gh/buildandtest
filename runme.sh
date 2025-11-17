#!/bin/bash

# Detect CI tool
if [ "$GITHUB_ACTIONS" = "true" ]; then
    TOOL="GitHub Actions"
elif [ "$CIRCLECI" = "true" ]; then
    TOOL="CircleCI"
elif [ "$BUILDKITE" = "true" ]; then
    TOOL="Buildkite"
else
    TOOL="Unknown CI"
fi

# Print UTC time in US formatting
BUILD_TIME=$(date -u "+%Y-%m-%d %H:%M:%S UTC")

echo "Build successful!"
echo "Build Tool: $TOOL"
echo "Build Time: $BUILD_TIME"

# Run your scripts for build and test
echo "Running build (return_blue)..."
./color.sh

echo "Running test..."
./test_color.sh
