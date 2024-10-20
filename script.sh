#!/bin/bash

# Check if the output file exists
if [ ! -f Level1.txt ]; then
    echo "Fail! Level1.txt not found."
    exit 1
fi

# Validate the content of Level1.txt
if grep -qE "^Hello [A-Za-z]+( [A-Za-z]+)?$" Level1.txt; then
    echo "Pass!"
    exit 0  # Success
else
    echo "Fail! Incorrect format in Level1.txt."
    exit 1  # Failure
fi
