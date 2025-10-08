#!/bin/zsh

set -ex

TOOL_NAME='nvim'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

CONFIG_HOME=$HOME/.config/$TOOL_NAME
mkdir -p $CONFIG_HOME/lua/plugins

FILES=(init.lua lua/{autocmds.lua,keymaps.lua,lsp.lua,settings.lua,plugins/{core.lua,lsp.lua,ui.lua}})

for file in ${FILES[@]}
do
  printf '\033[32m%s\033[m\n' "  $file creating..."
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $CONFIG_HOME/$file
  printf '\033[32m%s\033[m\n' "  $file is created"
done

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
