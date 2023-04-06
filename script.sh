#!/bin/bash

# Check if the script is being run from the correct directory
if [[ ! -f "source/$1" ]]; then
  echo "Usage: $0 <latex-file>"
  exit 1
fi

# Set the output directory for the generated HTML file
OUTPUT_DIR="build"

# Convert the LaTeX file to HTML using Pandoc
pandoc -s -f latex -t html -o "${OUTPUT_DIR}/${1%.tex}.html" "source/$1"

# Check if the conversion was successful
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to convert LaTeX file to HTML"
  exit 1
fi

# Print a success message
echo "Successfully converted $1 to HTML in the ${OUTPUT_DIR} directory"

