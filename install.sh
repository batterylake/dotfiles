#!/bin/bash

# Define your git repository URL
REPO_URL="https://github.com/batterylake/dotfiles.git"

# Define the destination directory
DEST_DIR="$HOME/dotfiles"

# Clone the repository into the destination directory
git clone "$REPO_URL" "$DEST_DIR"

# Change to the destination directory
cd "$DEST_DIR"

# Loop over the files in the destination directory
for file in .*
do
    # If the file is not . or ..,
    if [ "$file" != "." ] && [ "$file" != ".." ]; then
        # Create a symbolic link in the home directory
        ln -s "$DEST_DIR/$file" "$HOME/$file"
    fi
done

echo "Dotfiles installation completed."

