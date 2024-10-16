#!/bin/bash

# Check if the input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

# Convert the entire book to lowercase and process it
tr '[:upper:]' '[:lower:]' < "$input_file" | \
tr -c '[:alnum:]' '[\n*]' | \
sort | \
uniq -c | \
sort -nr

