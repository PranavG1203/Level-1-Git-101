#!/bin/bash

if [ ! -f Level1.txt ]; then
    echo "Fail! Level1.txt not found."
    exit 1
fi

if grep -qE "^Hello [A-Za-z]+( [A-Za-z]+)?$" Level1.txt; then
    echo "Pass!"
    exit 0  
else
    echo "Fail! Incorrect format in Level1.txt."
    exit 1 
fi
