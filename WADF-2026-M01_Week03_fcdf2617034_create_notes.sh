#!/usr/bin/env bash
# Script Name: create_notes.sh
# Description: Validates input and creates three numbered note files.
# Accept project name as a positional parameter
project_name="$1"
# Validation control: Check if blank
if [ -z "$project_name" ]; then
echo "Error: Project name cannot be blank." >&2
exit 1
fi
# Validation control; Check for unsafe path separators
if [[ "$project_name" == *"/"* || "$project_name" == *".."* ]]; then
echo "Error: Unsafe path separators detected." >&2
exit 1
fi
# Target directory setup
TARGET_DIR="$HOME/wadf-labs/week3/genarated-notes/$project_name"
mkdir -p "$TARGAT_DIR"
# For loop to generate note files
for i in {1..3}; do
touch "$TARGET_DIR/note_${i}.txt"
done
echo "Successfully created notes in $TARGET_DIR"
exit 0


