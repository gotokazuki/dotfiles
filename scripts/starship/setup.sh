#!/bin/zsh

set -ex

TOOL_NAME='starship'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

CONFIG_HOME=$HOME/.config/$TOOL_NAME
mkdir -p $CONFIG_HOME

FILES=( starship.toml )

for file in ${FILES[@]}
do
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $CONFIG_HOME/$file
  printf '\033[32m%s\033[m\n' "$file is created"
done

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
