#!/bin/bash

# Java Compilation Script
# Compiles all Java files in the current directory and subdirectories

echo "Compiling Java files..."

# Find all Java files and compile them
find . -name "*.java" -type f | while read -r file; do
    echo "Compiling: $file"
    javac "$file"
    if [ $? -eq 0 ]; then
        echo "✓ Successfully compiled: $file"
    else
        echo "✗ Failed to compile: $file"
    fi
done

echo ""
echo "Compilation complete!"
echo "Run your programs with: ./run.sh <ClassName>"
