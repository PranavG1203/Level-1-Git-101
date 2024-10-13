#!/bin/bash

# Check if the output file exists
if [ ! -f Level1.txt ]; then
    echo "Output file not found!"
    exit 1
fi

# Check if the output matches the expected format: "Hello <name>"
if grep -qE "^Hello [A-Za-z]+$" Level1.txt; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed!"
    exit 1
fi

