#!/bin/bash

# This script attempts to process a file, but fails to handle potential errors.

input_file="my_file.txt"

# Attempt to process the file without error handling
cat "$input_file" | awk '{ sum += $1; } END { print sum }'