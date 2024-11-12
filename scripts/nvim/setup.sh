#!/bin/bash

TOOL_NAME='nvim'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

CONFIG_HOME=$HOME/.config/$TOOL_NAME
mkdir -p $CONFIG_HOME/toml

FILES=( init.vim installer.sh )
TOML_FILES=( dein.toml dein_lazy.toml )

for file in ${FILES[@]}
do
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $CONFIG_HOME/$file
  printf '\033[32m%s\033[m\n' "$file is created"
done

for file in ${TOML_FILES[@]}
do
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/toml/$file -o $CONFIG_HOME/toml/$file
  printf '\033[32m%s\033[m\n' "$file is created"
done

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
