#!/bin/bash

TOOL_NAME='zsh'
printf '\033[32m%s\033[m\n' "$TOOL_NAME setup and zimfw setup are started..."

## set ZDOTDIR
export ZDOTDIR=$HOME/.config/$TOOL_NAME
mkdir -p $ZDOTDIR
mv $HOME/.zshrc $ZDOTDIR/.zshrc

## add abbr
echo 'zmodule olets/zsh-abbr' >> ~/.zimrc
export ZIM_HOME=$HOME/.zim
source $ZIM_HOME/zimfw.zsh install

## load zsh config files
ZSH_CONFIG_DIR=$ZDOTDIR/.zshrc.d
mkdir -p $ZSH_CONFIG_DIR
ZSH_FILES=( .zshrc.path .zshrc.base .zshrc.abbr .zshrc.alias .zshrc.opt )

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

printf '\033[32m%s\033[m\n' "$TOOL_NAME setup and zimfw setup are completed"
