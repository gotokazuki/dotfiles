#!/bin/zsh

set -ex

TOOL_NAME='zsh'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_HOME=$XDG_CONFIG_HOME/$TOOL_NAME
mkdir -p $CONFIG_HOME
export ZDOTDIR=$CONFIG_HOME
export XDG_CONFIG_HOME=$XDG_CONFIG_HOME

printf '\033[32m%s\033[m\n' '  .zshenv creating...'

touch $HOME/.zshenv
echo "export XDG_CONFIG_HOME=$XDG_CONFIG_HOME" > $HOME/.zshenv
echo "export ZDOTDIR=$CONFIG_HOME" >> $HOME/.zshenv

printf '\033[32m%s\033[m\n' "  .zshenv is created"

## load zsh config files
ZSH_CONFIG_DIR=$CONFIG_HOME/config
mkdir -p $ZSH_CONFIG_DIR

ZSH_FILES=( export.zsh base.zsh abbr.zsh opt.zsh function.zsh )

for file in ${ZSH_FILES[@]}
do
  printf '\033[32m%s\033[m\n' "  $file creating..."
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $ZSH_CONFIG_DIR/$file
  printf '\033[32m%s\033[m\n' "  $file is created"
done

printf '\033[32m%s\033[m\n' '  rz setting starting...'

echo "export ZSH_AUTOSUGGEST_MANUAL_REBIND=1" >> $ZDOTDIR/.zshrc
echo 'eval "$(${XDG_CONFIG_HOME:-$HOME}/.rz/bin/rz init)' >> $ZDOTDIR/.zshrc

printf '\033[32m%s\033[m\n' "  rz is completed"

for file in $ZSH_CONFIG_DIR/*
do
  echo "[ -r \"$file\" ] && source \"$file\"" >> $ZDOTDIR/.zshrc
done

printf '\033[32m%s\033[m\n' "  starship config creating..."

echo "eval \"$(starship init zsh)\"" >> $ZDOTDIR/.zshrc

printf '\033[32m%s\033[m\n' '  starship config is created'

printf '\033[32m%s\033[m\n' '  .zshrc is updated'

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
