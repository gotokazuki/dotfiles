#!/bin/zsh

set -ex

TOOL_NAME='zsh'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

CONFIG_HOME=$HOME/.config/$TOOL_NAME
mkdir -p $CONFIG_HOME
export ZDOTDIR=$CONFIG_HOME
export ZIM_HOME=$CONFIG_HOME

source <(curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh)
source $ZDOTDIR/.zshrc

touch $HOME/.zshenv
echo "export ZDOTDIR=$CONFIG_HOME" >> $HOME/.zshenv
echo "export ZIM_HOME=$CONFIG_HOME" >> $HOME/.zshenv

## add abbr
echo 'zmodule olets/zsh-abbr' >> $CONFIG_HOME/.zimrc
source $CONFIG_HOME/.zim/zimfw.zsh install

## load zsh config files
ZSH_CONFIG_DIR=$CONFIG_HOME/config
mkdir -p $ZSH_CONFIG_DIR
ZSH_FILES=( export.zsh base.zsh abbr.zsh alias.zsh opt.zsh function.zsh )

for file in ${ZSH_FILES[@]}
do
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $ZSH_CONFIG_DIR/$file
  printf '\033[32m%s\033[m\n' "  $file is created"
done

for file in $ZSH_CONFIG_DIR/*
do
  echo "[ -r \"$file\" ] && source \"$file\"" >> $ZDOTDIR/.zshrc
done

echo "eval \"$(starship init zsh)\"" >> $ZDOTDIR/.zshrc

printf '\033[32m%s\033[m\n' '  .zshrc is updated'

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
