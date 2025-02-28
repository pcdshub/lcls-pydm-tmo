#!/bin/bash

# Input file (output from the previous script) and output file name
input_file="cam.cfg"
output_file="cam_toolbar.txt"

# Get the current working directory
current_path=$(pwd)

# Clear the output file if it already exists
> "$output_file"

# Start writing the fixed header to the output file
echo "    Cam Viewer - Config:" >> "$output_file"
echo "      type: shell" >> "$output_file"
echo "      commands:" >> "$output_file"

# Read the input file line by line
while IFS= read -r name; do
    # Add the command path for each name
    echo "        - $current_path/$name.cmd" >> "$output_file"
done < "$input_file"

# Start the titles section
echo "      titles:" >> "$output_file"

# Read the input file again to add the titles
while IFS= read -r name; do
    # Add the title for each name
    echo "        - $name" >> "$output_file"
done < "$input_file"

echo "Configuration complete. Output written to $output_file."

