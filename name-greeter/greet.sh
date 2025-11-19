#!/bin/bash

# Simple greeting script for GitHub Actions
# Usage: greet.sh <name>

NAME="$1"

if [ -z "$NAME" ]; then
    echo "Error: No name provided"
    exit 1
fi

# Print the greeting to stdout
echo "Hello, $NAME!"

# Set the output for GitHub Actions
echo "greeting=Hello, $NAME!" >> "$GITHUB_OUTPUT"