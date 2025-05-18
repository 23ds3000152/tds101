#!/bin/bash

input_file="$1"

echo "{"

first=1
while IFS= read -r line
do
    # Skip empty lines
    [[ -z "$line" ]] && continue

    # Split line into key and value
    key="${line%%=*}"
    value="${line#*=}"

    # Print comma before every element except the first
    if [[ $first -eq 1 ]]; then
        first=0
    else
        echo ", "
    fi

    # Output JSON object
    echo -n "\"$key\": \"$value\""
done < "$input_file"

echo
echo "}"
