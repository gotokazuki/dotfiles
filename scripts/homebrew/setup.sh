#!/bin/bash

TOOL_NAME='homebrew'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/homebrew/Brewfile -o ./Brewfile
brew bundle
rm ./Brewfile

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
