#!/bin/bash

# Java Run Script
# Usage: ./run.sh <ClassName>
# Example: ./run.sh help

if [ -z "$1" ]; then
    echo "Usage: ./run.sh <ClassName>"
    echo "Example: ./run.sh help"
    exit 1
fi

CLASS_NAME=$1

# Find the directory containing the class file
CLASS_DIR=$(find . -name "${CLASS_NAME}.class" -type f | head -1 | xargs dirname)

if [ -z "$CLASS_DIR" ]; then
    echo "Error: Class file ${CLASS_NAME}.class not found."
    echo "Make sure you've compiled the Java file first using: ./compile.sh"
    exit 1
fi

echo "Running: $CLASS_NAME"
echo "---"
java -cp "$CLASS_DIR" "$CLASS_NAME"
