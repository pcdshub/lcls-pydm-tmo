#!/bin/bash

input_file="/cds/group/pcds/config/tmo/camviewer.cfg"
output_file="cam.cfg"

# Create or empty the output file
> "$output_file"

# Read each line from the input file
while IFS= read -r line
do
    # Skip lines that are empty or start with #
    if [[ -z "$line" || "$line" =~ ^# ]]; then
        continue
    fi

    # Extract the last word after the last comma
    last_word=$(echo "$line" | awk -F ',' '{print $NF}' | xargs)

    # Write the last word to the output file
    echo "$last_word" >> "$output_file"

done < "$input_file"

