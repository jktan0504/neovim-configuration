#!/usr/bin/env bash

# Filename: ~/.config/nvim/colorscheme/colorscheme-selector.sh
# Colorscheme selector for Neovim using fzf

# Path to the directory containing color scheme scripts
COLORSCHEME_DIR=~/.config/nvim/colorscheme/list

# Path to the active colorscheme file
ACTIVE_FILE=~/.config/nvim/colorscheme/active/active-colorscheme.sh

# Ensure fzf is installed
if ! command -v fzf &>/dev/null; then
  echo "fzf is not installed. Please install it first."
  exit 1
fi

# List available color scheme scripts
schemes=($(ls "$COLORSCHEME_DIR"/*.sh 2>/dev/null | xargs -n 1 basename))

# Check if any schemes are available
if [ ${#schemes[@]} -eq 0 ]; then
  echo "No color scheme scripts found in $COLORSCHEME_DIR."
  exit 1
fi

# Use fzf to select a scheme
selected_scheme=$(printf "%s\n" "${schemes[@]}" | fzf --height=100% --reverse --header="Select a colorscheme" --prompt="> ")

# Check if a selection was made
if [ -z "$selected_scheme" ]; then
  echo "No color scheme selected."
  exit 0
fi

# Apply the selected color scheme
colorscheme_file="$COLORSCHEME_DIR/$selected_scheme"

# Check if the colorscheme file exists
if [ ! -f "$colorscheme_file" ]; then
  echo "Error: Colorscheme file '$colorscheme_file' does not exist."
  exit 1
fi

# Create active directory if it doesn't exist
mkdir -p "$(dirname "$ACTIVE_FILE")"

# Copy the selected colorscheme to active
cp "$colorscheme_file" "$ACTIVE_FILE"

echo "Colorscheme '$selected_scheme' activated!"
echo "Restart Neovim to see the changes."
