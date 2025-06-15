#!/bin/bash

# Script to count files in a directory
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute_directory_path>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "❌ '$1' is not a valid directory."
  exit 1
fi

count=$(find "$1" -maxdepth 1 -type f | wc -l)
echo "📂 There are $count files in directory '$1'."

