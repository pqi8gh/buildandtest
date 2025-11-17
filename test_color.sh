#!/bin/bash

# Capture function output
output=$(./color.sh)

if [ "$output" = "blue" ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed: expected 'blue' but got '$output'"
  exit 1
fi
