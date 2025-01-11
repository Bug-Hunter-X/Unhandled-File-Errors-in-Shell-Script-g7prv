#!/bin/bash

# Improved script with error handling

input_file="my_file.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

# Process the file using a safer approach
cat "$input_file" | awk '{ sum += $1; } END { print sum }' || {
  echo "Error: An error occurred while processing the file." >&2
  exit 1
}

#Alternative using while read loop and handling empty files
#while IFS= read -r line; do
#  #process each line
#done < "$input_file"
#if [[ $? -ne 0 ]]; then
#  echo "Error: file processing failed" >&2
#  exit 1
#fi