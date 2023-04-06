#!/bin/bash

# Check if the script is being run from the correct directory
if [[ ! -f "$1" ]]; then
  echo "Usage: $0 <latex-file>"
  exit 1
fi

# Convert the LaTeX file to HTML using Pandoc
pandoc -s -f latex -t html -o "${1%.tex}.html" "$1"

# Check if the conversion was successful
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to convert LaTeX file to HTML"
  exit 1
fi

# Print a success message
echo "Successfully converted $1 to HTML"
