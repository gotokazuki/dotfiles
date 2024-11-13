#!/bin/bash

TOOL_NAME='zsh'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is started..."

CONFIG_HOME=$HOME/.config/$TOOL_NAME

export ZDOTDIR=$CONFIG_HOME
export ZIM_HOME=$CONFIG_HOME

touch $HOME/.zshenv
echo "export ZDOTDIR=$CONFIG_HOME" >> $HOME/.zshenv
echo "export ZIM_HOME=$CONFIG_HOME" >> $HOME/.zshenv

mkdir -p $CONFIG_HOME
mv $HOME/.zshrc $CONFIG_HOME/.zshrc
mv $HOME/.zim $CONFIG_HOME

## add abbr
echo 'zmodule olets/zsh-abbr' >> $HOME/.zimrc
source $CONFIG_HOME/.zim/zimfw.zsh install

## load zsh config files
ZSH_CONFIG_DIR=$CONFIG_HOME/config
mkdir -p $ZSH_CONFIG_DIR
ZSH_FILES=( path.zsh base.zsh abbr.zsh alias.zsh opt.zsh )

for file in ${ZSH_FILES[@]}
do
  curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/$TOOL_NAME/$file -o $ZSH_CONFIG_DIR/$file
  printf '\033[32m%s\033[m\n' "$file is created"
done

for file in $ZSH_CONFIG_DIR/*
do
  echo "[ -r \"$file\" ] && source \"$file\"" >> $ZDOTDIR/.zshrc
done

printf '\033[32m%s\033[m\n' '.zshrc is updated'

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup is completed"
